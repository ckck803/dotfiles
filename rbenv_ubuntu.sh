#!/bin/bash

# rbenv 설치
sudo apt-get install rbenv
rbenv install 2.6.3

# rbenv의 ruby를 전역적으로 사용하기 위해서
rbenv global 2.6.3
rbenv rehash

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ${HOME}/.zshrc
