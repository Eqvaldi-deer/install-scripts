#!/bin/sh
apt update 
apt install git -y
apt install rustc -y
mkdir ~/Binary
cd ~/Binary
mkdir daaart
cd ..
git clone https://github.com/DavidHusicka/daaart.git
cd daaart/
cargo build --release
cd target/release/
cp daaart ~/Binary/daaart
cd ~/
rm -rf daaart/
apt clean
