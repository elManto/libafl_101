use libafl_sugar::ForkserverBytesCoverageSugar;
use clap::Parser;
use std::path::PathBuf;

#[derive(Parser)]
pub struct FuzzerOptions {
    #[clap(short, long, default_value = "solutions")]
    pub output: PathBuf,
    #[clap(short, long, default_value = "corpus", multiple_values = true)]
    pub input: PathBuf,
    #[clap(short, long)]
    pub cores: Vec<usize>,
    #[clap(short, long, required = true, takes_value = true)]
    pub target: String,
    #[clap(
        short, long, allow_hyphen_values = true, multiple_values = true, takes_value = true
    )]
    pub args: Vec<String>,
}

pub fn parse_args() -> FuzzerOptions {
    FuzzerOptions::parse()
}


fn main() {
    let fuzzer_options = parse_args();

    ForkserverBytesCoverageSugar::builder()
        .input_dirs(&[fuzzer_options.input])
        .output_dir(fuzzer_options.output)
        .cores(&fuzzer_options.cores)
        .program(fuzzer_options.target)
        .arguments(&fuzzer_options.args)
        .build()
        .run()
}
