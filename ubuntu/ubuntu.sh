#!/bin/sh

position=$(pwd)

sudo apt-get install zsh

# zsh-completion
git clone git://github.com/zsh-users/zsh-completions.git
#fpath=(path/to/zsh-completions/src $fpath)
#rm -f ~/.zcompdump; compinit

cd ..
[ ! -f $HOME/.gitconfig ] && ln -nfs $HOME/dotfiles/.gitconfig $HOME/.gitconfig
[ ! -f $HOME/.gitignore_global ] && ln -nfs $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global

chsh -s $(which zsh)
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
#[ ! -f $HOME/.zshrc ] && cd $home && ln -nfs $home/.zshrc $HOME/.zshrc
#[ ! -f $HOME/.zshrc ] && cd $home && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
