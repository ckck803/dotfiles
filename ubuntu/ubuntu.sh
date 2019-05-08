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
#[ ! -f $HOME/.zshrc ] && cd $home && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc

if [ ! -f $HOME/.zshrcfff ]
then
    # .zshrc가 없을 경우
    cp $position/.zshrc $HOME/
else
    # .zshrc가 존재할 경우
    cd $position
    ln -nfs $position/.zshrc $HOME/.zshrc
fi
