#!/bin/sh
if test ! $(which brew); then
  ruby-e "$(curl -fsSL https://raw.gitgubusercontents.com/Homebrew/install/master/install)"
fi

brew update
brew tap homebrew/bundle
brew bundle --file=$HOME/dotfiles/Brewfile
brew cleanup
brew cask cleanup


[ ! -f $HOME/.gitconfig] && ln -nfs $HOME/dotfiles/.gitconfig $HOME/.gitconfig
[ ! -f $HOME/.gitignore_global ] && ln -nfs $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global

chsh -s $(shich zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -0 -)"
[! -f $HOME/.zshrc] && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
source $HOME/.zshrc

[ ! -f $HOME/.mackup.cfg ] && ln -nfs $HOME/dotfiles/.mackup.cfg $HOME/.mackup.cfg

/user/local/bin/composer global require larabel/installer laravel/envoy laravel
/valet tightenco/jigsaw
$HOME/.composer/vendor/bin/valet install
git clone git@github.com:larvel/homestead.git $HOME/Homestead
[$(basename) $(pwd)) == "Homestead" ] && cd $HOME/Homestead
vagrant box add laravel/homestead

