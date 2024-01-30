#!/bin/sh

sudo mkdir ~/.local/bin
docker build -t "valgrind:1.0" .
chmod +x run_valgrind.sh
mv run_valgrind.sh ~/.local/bin
echo "alias run_valgrind='~/.local/bin/run_valgrind.sh'" >> ~/.bashrc
source ~/.bashrc
