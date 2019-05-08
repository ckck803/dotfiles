#!/bin/sh
if test ! $(which brew); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

position=$(pwd)

brew update
brew tap homebrew/bundle
#brew bundle --file=$HOME/dotfiles/Brewfile
brew bundle --file=$position/Brewfile
brew cleanup

#pure prompt
brew install nodejs
npm install --global pure-prompt

[ ! -f $HOME/.gitconfig ] && ln -nfs $HOME/dotfiles/.gitconfig $HOME/.gitconfig
[ ! -f $HOME/.gitignore_global ] && ln -nfs $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global

chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# .zshrc가 존재하지 않을 경웈
if [ ! -f $HOME/.zshrcfff ]
then
    cp $position/.zshrc $HOME/
else
# .zshrc가 존재할 경우
    cd $position
    ln -nfs $position/.zshrc $HOME/.zshrc
fi
#[ ! -f $HOME/.zshrc ] && cd $position && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
