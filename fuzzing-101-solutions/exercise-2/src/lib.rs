use libafl::bolts::{current_nanos, AsSlice};
use libafl::bolts::rands::StdRand;
use libafl::bolts::tuples::tuple_list;
use libafl::corpus::{
    InMemoryCorpus, IndexesLenTimeMinimizerCorpusScheduler, OnDiskCorpus,
    QueueCorpusScheduler,Corpus,
};
use libafl::events::{setup_restarting_mgr_std, EventConfig, EventRestarter};
use libafl::executors::{ExitKind, InProcessExecutor, TimeoutExecutor};
use libafl::feedbacks::{MapFeedbackState, MaxMapFeedback, TimeFeedback, CrashFeedback};
use libafl::inputs::{BytesInput, HasTargetBytes};
use libafl::mutators::{havoc_mutations, StdScheduledMutator};
use libafl::observers::{HitcountsMapObserver, TimeObserver, StdMapObserver};
use libafl::stages::StdMutationalStage;
use libafl::state::{StdState, HasCorpus};
use libafl::{feedback_and_fast, feedback_or, StdFuzzer, Error, Fuzzer};
use libafl::monitors::MultiMonitor;

use libafl_targets::{EDGES_MAP, MAX_EDGES_NUM, libfuzzer_test_one_input};

use std::path::PathBuf;
use std::time::Duration;

#[no_mangle]
fn libafl_main() -> Result<(), Error> {

  let corpus_dir: Vec<PathBuf> = vec![PathBuf::from("./corpus")];
  let input_corpus = InMemoryCorpus::<BytesInput>::new();
  let solutions_corpus = OnDiskCorpus::new(PathBuf::from("./solutions")).unwrap();

  let edges = unsafe {&mut EDGES_MAP[0..MAX_EDGES_NUM] };
  let edge_observer = StdMapObserver::new("edges", edges);
  let hitcount_observer = HitcountsMapObserver::new(edge_observer);
  let time_observer = TimeObserver::new("time");

  let feedback_state = MapFeedbackState::with_observer(&hitcount_observer);
  let feedback = feedback_or!(
    MaxMapFeedback::new_tracking(&feedback_state, &hitcount_observer, true, false),  
    TimeFeedback::new_with_observer(&time_observer)
  );

  let objective_state = MapFeedbackState::new("obj_edges", unsafe {EDGES_MAP.len()});
  let objective = feedback_and_fast!(
    CrashFeedback::new(),
    MaxMapFeedback::new(&objective_state, &hitcount_observer)
  );

  let monitor = MultiMonitor::new(|s| {println!("{}", s)});

  let (state, mut mgr) = match setup_restarting_mgr_std(monitor, 1337, EventConfig::AlwaysUnique) {
    Ok(res) => res,
    Err(err) => match err {
      Error::ShuttingDown => return Ok(()),
      _ => panic!("Failed to restart the mgr: {}", err),
    },
  };
   
  let mut state = state.unwrap_or_else(|| {StdState::new(StdRand::with_seed(current_nanos()), input_corpus, solutions_corpus, tuple_list!(feedback_state, objective_state))});

  let queue_corpus_minimizer = QueueCorpusScheduler::new();
  let actual_corpus_minimizer = IndexesLenTimeMinimizerCorpusScheduler::new(queue_corpus_minimizer); 

  let mut fuzzer = StdFuzzer::new(actual_corpus_minimizer, feedback, objective);

  let mut harness = |input: &BytesInput| {
    let target = input.target_bytes();
    let buffer = target.as_slice();
    libfuzzer_test_one_input(buffer);
    ExitKind::Ok
  }; 

  let in_proc_exec = InProcessExecutor::new(
    &mut harness,
    tuple_list!(hitcount_observer, time_observer),
    &mut fuzzer,
    &mut state, 
    &mut mgr,
  ).unwrap();

  let timeout = Duration::from_millis(5000);
  let mut executor = TimeoutExecutor::new(in_proc_exec, timeout);

  if state.corpus().count() < 1 {
    state.load_initial_inputs(&mut fuzzer, &mut executor, &mut mgr, &corpus_dir)
         .unwrap_or_else(|err| {panic!("Failed to load corpus {:?}, error {:?}", &corpus_dir, err)});
    println!("Corpus imported from disk");
  }

  let mutator = StdScheduledMutator::new(havoc_mutations());

  let mut stages = tuple_list!(StdMutationalStage::new(mutator));

  fuzzer.fuzz_loop_for(&mut stages, &mut executor, &mut state, &mut mgr, 10000)
        .expect("error in fuzz loop");

  mgr.on_restart(&mut state).unwrap();

  Ok(())
}
