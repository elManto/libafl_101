# How to run the fuzzer

1. cargo build --release
2. cp ../target/release/libexerciseone.a
3. cd xpdf
4. cmake ../xpdf -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=$(pwd)/../../target/release/compiler -DCMAKE_CXX_COMPILER=$(pwd)/../../target/release/compiler_pp
5. make
6. ../target/release/compiler_pp -I xpdf/goo -I xpdf/fofi -I xpdf/splash -I xpdf/xpdf -I xpdf -o fuzzer harness.cc build/*/*.a -lm -ldl -lpthread -lstdc++ -lgcc -lutil -lrt
