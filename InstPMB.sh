#!/bin/bash
PATH="$HOME/.local/bin:$PATH"
sudo apt update && sudo apt install git -y
git clone --depth=1 https://git.sr.ht/~postmarketos/pmbootstrap
mkdir -p ~/.local/bin
ln -s "$PWD/pmbootstrap/pmbootstrap.py" ~/.local/bin/pmbootstrap
pmbootstrap --version