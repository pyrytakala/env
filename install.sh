# !/bin/bash
URL='https://raw.githubusercontent.com/pyrytakala/env/master/'
curl -sS ${URL}.bashrc >> ~/.bashrc
curl -sS ${URL}.vimrc >> ~/.vimrc
curl -sS ${URL}.tmux.conf > ~/.tmux.conf
curl -sS ${URL}.ideavimrc > ~/.ideavimrc
curl -sS ${URL}.gitignore_global > ~/.gitignore_global
