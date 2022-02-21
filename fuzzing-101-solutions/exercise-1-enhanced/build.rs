use std::env;
use std::process::Command;

fn main() {

  //println!("cargo:rerun-if-changed=build.rs");
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
            .arg(&format!("{}/build-with-lto", xpdf_dir))
            .arg(&format!("{}/build-with-fast", xpdf_dir))
            .current_dir(xpdf_dir.clone())
            .status()
            .expect("Failed to rm -rf install dir");

  env::set_var("LLVM_CONFIG", "llvm-config-11");

  env::set_var("CFLAGS", "-fPIC");
  env::set_var("CXXFLAGS", "-fPIC");
  env::set_var("LDFLAGS", "-fPIC");

  for (build_dir, compiler) in [("fast", "afl-clang-fast"), ("lto", "afl-clang-lto")] {

    Command::new("./configure")
    		      .arg(&format!("--prefix={}/built-with-{}", xpdf_dir, build_dir))
        		  .env("CC", format!("/usr/local/bin/{}", compiler))
        		  .env("CXX", format!("/usr/local/bin/{}++", compiler))
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

            
}
