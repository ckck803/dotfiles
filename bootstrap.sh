#!/bin/sh
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew tap homebrew/bundle
brew bundle --file=$HOME/dotfiles/Brewfile
brew cleanup


[ ! -f $HOME/.gitconfig ] && ln -nfs $HOME/dotfiles/.gitconfig $HOME/.gitconfig
[ ! -f $HOME/.gitignore_global ] && ln -nfs $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global

chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
[ ! -f $HOME/.zshrc ] && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
source $HOME/.zshrc

#powerlevel9k 설치
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#pure prompt
brew install nodejs
npm install --global pure-prompt

#zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#spacevim
curl -sLf https://spacevim.org/install.sh | bash

[ ! -f $HOME/.mackup.cfg ] && ln -nfs $HOME/dotfiles/.mackup.cfg $HOME/.mackup.cfg

#/usr/local/bin/composer global require laravel/installer laravel/envoy laravel/valet tightenco/jigsaw
#$HOME/.composer/vendor/bin/valet install
#git clone git@github.com:laravel/homestead.git $HOME/Homestead
#[ $(basename $(pwd)) == "Homestead" ] && cd $HOME/Homestead
#vagrant box add laravel/homestead
