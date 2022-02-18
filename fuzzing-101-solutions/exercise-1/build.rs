use std::env;
use std::process::Command;

fn main() {

  println!("cargo:rerun-if-changed=build.rs");
  //println!("cargo:rerun-if-changed=src/main.rs");
  
  let cwd = env::current_dir()
            .unwrap()
            .to_string_lossy()
            .to_string();

  let xpdf_dir = format!("{}/xpdf", cwd);

  Command::new("make").arg("clean")
            .current_dir(xpdf_dir.clone())
            .status()
            .expect("Failed to clean");

  Command::new("rm").arg("-r").arg("-v").arg("-f")
            .arg(&format!("{}/install", xpdf_dir))
            .current_dir(xpdf_dir.clone())
            .status()
            .expect("Failed to rm -rf install dir");

  env::set_var("LLVM_CONFIG", "llvm-config-11");

  env::set_var("CFLAGS", "-fPIC");
  env::set_var("CXXFLAGS", "-fPIC");
  env::set_var("LDFLAGS", "-fPIC");

  Command::new("./configure")
  		      .arg(&format!("--prefix={}/install", xpdf_dir))
      		  .env("CC", "/usr/local/bin/afl-clang-fast")
      		  .env("CXX", "/usr/local/bin/afl-clang-fast++")
        		.current_dir(xpdf_dir.clone())
        		.status()
        		.expect("./configure failed"); 

	Command::new("make").current_dir(xpdf_dir.clone())
						.status()
						.expect("make failed");

	Command::new("make").arg("install")
						.current_dir(xpdf_dir.clone())
						.status()
						.expect("Failed to run make install");


            
}
