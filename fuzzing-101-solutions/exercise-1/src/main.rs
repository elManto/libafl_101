use libafl::bolts::current_nanos;
use libafl::bolts::shmem::ShMemProvider;
use libafl::bolts::shmem::StdShMemProvider;
use libafl::bolts::shmem::ShMem;
use libafl::bolts::rands::StdRand;
use libafl::bolts::tuples::tuple_list;
use libafl::corpus::{
    InMemoryCorpus, IndexesLenTimeMinimizerCorpusScheduler, OnDiskCorpus,
    QueueCorpusScheduler,
};
use libafl::events::{SimpleEventManager};
use libafl::executors::{ForkserverExecutor, TimeoutForkserverExecutor};
use libafl::feedbacks::{MapFeedbackState, MaxMapFeedback, TimeFeedback, TimeoutFeedback};
use libafl::inputs::{BytesInput};
use libafl::mutators::{havoc_mutations, StdScheduledMutator};
use libafl::observers::{HitcountsMapObserver, TimeObserver, ConstMapObserver};
use libafl::stages::StdMutationalStage;
use libafl::state::{StdState,HasCorpus};
use libafl::{feedback_and_fast, feedback_or, Fuzzer, StdFuzzer};
use std::path::PathBuf;
use std::time::Duration;
use libafl::stats::SimpleStats;
use libafl::corpus::Corpus;

fn main() {

  //corpus setup
  let corpus_dir = vec![PathBuf::from("./corpus")];
  let input_corpus = InMemoryCorpus::<BytesInput>::new();
  let timeouts_corpus = OnDiskCorpus::new(PathBuf::from("./timeouts")).expect("Failed to create timeouts");


  //observers setup
  let time_observer = TimeObserver::new("time");

  const MAP_SIZE: usize = 65536;
  let mut shmem_provider = StdShMemProvider::new().unwrap();
  //let mut shmem = ShMemProvider::new().unwrap().new_map(MAP_SIZE).unwrap();
  let mut shmem = shmem_provider.new_map(MAP_SIZE).unwrap();
  shmem.write_to_env("__AFL_SHM_ID").expect("Cannot write SHM ID");
  let mut shmem_map = shmem.map_mut();

  let edges_observer = HitcountsMapObserver::new(ConstMapObserver::<_, MAP_SIZE>::new(
    "shared_mem",
    &mut shmem_map,
  ));

  
  // feedback setup
  let feedback_state = MapFeedbackState::with_observer(&edges_observer);
  let feedback = feedback_or!(
    MaxMapFeedback::new_tracking(&feedback_state, &edges_observer, true, false),
    TimeFeedback::new_with_observer(&time_observer)
  );

  let objective_state = MapFeedbackState::new("timeout_edges", MAP_SIZE);
  let objective = feedback_and_fast!(
    TimeoutFeedback::new(),
    MaxMapFeedback::new(&objective_state, &edges_observer)
);
  
  // state setup
 let mut state = StdState::new(
    StdRand::with_seed(current_nanos()),
    input_corpus,
    timeouts_corpus,
    tuple_list!(feedback_state, objective_state),
  ); 




  // stats setup 
  let stats = SimpleStats::new(|s| println!("{}", s));

  
  // eventmanager setup
  let mut mgr = SimpleEventManager::new(stats);

  // scheduler 
  let scheduler = IndexesLenTimeMinimizerCorpusScheduler::new(QueueCorpusScheduler::new());

  
  // actual fuzzer
  let mut fuzzer = StdFuzzer::new(scheduler, feedback, objective);

  // configure fork server executor
  let fork_server = ForkserverExecutor::new(
    "./xpdf/install/bin/pdftotext".to_string(),
    &[String::from("@@")],
    false,  // use_shmem_testcase
    tuple_list!(edges_observer, time_observer),
  ).unwrap(); 

  let timeout = Duration::from_millis(5000);

  let mut executor = TimeoutForkserverExecutor::new(fork_server, timeout).unwrap();


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
    .fuzz_loop(&mut stages, &mut executor, &mut state, &mut mgr)
    .expect("Error in the fuzzing loop");


}
