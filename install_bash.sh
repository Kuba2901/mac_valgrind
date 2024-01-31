#!/bin/sh

sudo mkdir -p ~/.local/bin
docker build -t "valgrind:1.0" .
sudo chmod +x run_valgrind.sh
sudo mv run_valgrind.sh ~/.local/bin
echo "alias run_valgrind='~/.local/bin/run_valgrind.sh'" >> ~/.bashrc
source ~/.bashrc
