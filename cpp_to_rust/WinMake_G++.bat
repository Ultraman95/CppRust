rm -rf target/
rm -rf Cargo.lock
cargo build
cp target/debug/math.dll ./
g++ src/main.cpp -L ./target/debug/ -lmath -o run
