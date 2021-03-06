cargo build --release --target=wasm32-unknown-unknown

mkdir ".\target\webroot"
copy ".\scripts\index.html" ".\target\webroot\index.html"
copy ".\scripts\play.png" ".\target\webroot\play.png"
wasm-bindgen --target no-modules --no-typescript --out-dir ./target/webroot/ --out-name ld48 ./target/wasm32-unknown-unknown/release/ld48.wasm