use libafl::bolts::{current_nanos, AsSlice};
//use libafl::bolts::shmem::ShMemProvider;
//use libafl::bolts::shmem::StdShMemProvider;
//use libafl::bolts::shmem::ShMem;
use libafl::bolts::rands::StdRand;
use libafl::bolts::tuples::tuple_list;
use libafl::corpus::{
    InMemoryCorpus, IndexesLenTimeMinimizerCorpusScheduler, OnDiskCorpus,
    QueueCorpusScheduler,Corpus,
};
use libafl::events::{setup_restarting_mgr_std, EventConfig, EventRestarter};
use libafl::executors::{ExitKind, InProcessExecutor, TimeoutExecutor};
use libafl::feedbacks::{MapFeedbackState, MaxMapFeedback, TimeFeedback, TimeoutFeedback};
use libafl::inputs::{BytesInput, HasTargetBytes};
use libafl::mutators::{havoc_mutations, StdScheduledMutator};
use libafl::observers::{HitcountsMapObserver, TimeObserver, StdMapObserver};
use libafl::stages::StdMutationalStage;
use libafl::state::{StdState, HasCorpus};
use libafl::{feedback_and_fast, feedback_or, StdFuzzer, Error, Fuzzer};
use std::path::PathBuf;
use std::time::Duration;
//use libafl::stats::SimpleStats;
//use libafl::corpus::Corpus;
use libafl_targets::{EDGES_MAP, MAX_EDGES_NUM, libfuzzer_test_one_input};
use libafl::monitors::MultiMonitor;

//use clap::{App, Arg};


//fn parse_cli() -> String {
//  let matches = App::new("fuzzer")
//    .arg(
//      Arg::new("compiler")
//        .possible_values(&["fast", "lto"])
//        .short('c')
//        .long("compiler")
//        .value_name("COMPILER")
//        .help("compiler variant (default: afl-clang-fast)")
//        .takes_value(true)
//        .default_value("fast"),
//    ).get_matches();
//
//  let res: String = String::from(matches.value_of("compiler").unwrap());
//  return res;
//}

#[no_mangle]
fn libafl_main() -> Result<(), Error> {

  //corpus setup
  let corpus_dir = vec![PathBuf::from("./corpus")];
  let input_corpus = InMemoryCorpus::<BytesInput>::new();
  let timeouts_corpus = OnDiskCorpus::new(PathBuf::from("./timeouts")).expect("Failed to create timeouts");


  //observers setup
  let time_observer = TimeObserver::new("time");

  //const MAP_SIZE: usize = 65536;
  //let mut shmem_provider = StdShMemProvider::new().unwrap();
  ////let mut shmem = ShMemProvider::new().unwrap().new_map(MAP_SIZE).unwrap();
  //let mut shmem = shmem_provider.new_map(MAP_SIZE).unwrap();
  //shmem.write_to_env("__AFL_SHM_ID").expect("Cannot write SHM ID");
  //let mut shmem_map = shmem.map_mut();

  let edges = unsafe {&mut EDGES_MAP[0..MAX_EDGES_NUM] };

  let edges_observer = HitcountsMapObserver::new(StdMapObserver::new(
    "edges",
     edges,
  ));

  
  // feedback setup
  let feedback_state = MapFeedbackState::with_observer(&edges_observer);
  let feedback = feedback_or!(
    MaxMapFeedback::new_tracking(&feedback_state, &edges_observer, true, false),
    TimeFeedback::new_with_observer(&time_observer)
  );

  let objective_state = MapFeedbackState::new("timeout_edges", unsafe {EDGES_MAP.len()});
  let objective = feedback_and_fast!(
    TimeoutFeedback::new(),
    MaxMapFeedback::new(&objective_state, &edges_observer)
);
  
  // state setup
 //let mut state = StdState::new(
 //   StdRand::with_seed(current_nanos()),
 //   input_corpus,
 //   timeouts_corpus,
 //   tuple_list!(feedback_state, objective_state),
 // ); 




  // stats setup 
  let monitor = MultiMonitor::new(|s| println!("{}", s));

  
  // eventmanager setup
  //let mut mgr = SimpleEventManager::new(stats);
  let (state, mut mgr) = match setup_restarting_mgr_std(monitor, 1337, EventConfig::AlwaysUnique)
  {
    Ok(res) => res,
    Err(err) => match err {
      Error::ShuttingDown => {
        return Ok(());
      }
      _ => {
        panic!("Failed to setup mgr: {}", err);
      }
    },
  };

  //let mut state = state.unwrap_or_else(|| {
  //  StdState::new(
  //    StdRand::with_seed(current_nanos()), input_corpus, timeouts_corpus, tuple_list!(feedback_state, objective_state),
  //  )
  //});
    let mut state = state.unwrap_or_else(|| {
        StdState::new(
            // random number generator with a time-based seed
            StdRand::with_seed(current_nanos()),
            input_corpus,
            timeouts_corpus,
            // States of the feedbacks that store the data related to the feedbacks that should be
            // persisted in the State.
            tuple_list!(feedback_state, objective_state),
        )
    });

  // scheduler 
  let scheduler = IndexesLenTimeMinimizerCorpusScheduler::new(QueueCorpusScheduler::new());

  
  // actual fuzzer
  let mut fuzzer = StdFuzzer::new(scheduler, feedback, objective);


  // configure fork server executor
  //let compiler = parse_cli();
  
  let mut harness = |input: &BytesInput| {
    let target = input.target_bytes();
    let buffer = target.as_slice();
    libfuzzer_test_one_input(buffer);
    ExitKind::Ok
  };
  
  let inproc = InProcessExecutor::new(
    &mut harness, tuple_list!(edges_observer, time_observer), &mut fuzzer, &mut state, &mut mgr,
  ).unwrap();

  //let fork_server = ForkserverExecutor::new(
  //  format!("./xpdf/built-with-{}/bin/pdftotext", compiler),
  //  &[],
  //  true,  // use_shmem_testcase
  //  tuple_list!(edges_observer, time_observer),
  //).unwrap(); 

  let timeout = Duration::from_millis(5000);

  let mut executor = TimeoutExecutor::new(inproc, timeout);


  // For the initial run we load corpus from disk
  if state.corpus().count() < 1 {
    state.load_initial_inputs(&mut fuzzer, &mut executor, &mut mgr, &corpus_dir)
         .unwrap_or_else(|err| {panic!("Failed to load corpus {:?}, error {:?}", &corpus_dir, err)});
    println!("Corpus imported from disk");
  }

  // mutator and stages
  let mutator = StdScheduledMutator::new(havoc_mutations());
  let mut stages = tuple_list!(StdMutationalStage::new(mutator));

  // runs the fuzzer
  fuzzer
    .fuzz_loop_for(&mut stages, &mut executor, &mut state, &mut mgr, 10000)
    .expect("Error in the fuzzing loop");

  mgr.on_restart(&mut state).unwrap();

  Ok(())


}
