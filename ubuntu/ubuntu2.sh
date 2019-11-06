#!/bin/bash

if [ ! -f $HOME/.zshrc ]
then
    # .zshrc가 없을 경우
    cp $HOME/dotfiles/ubuntu/.zshrc.zshrc $HOME/
else
    # .zshrc가 존재할 경우
    cd $position
    ln -nfs $HOME/dotfiles/ubuntu/.zshrc $HOME/.zshrc
fi

#powerline 폰트 설치
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts 
curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf"


#powerlevel9k 설치
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#spacevim
sudo apt-get install curl
curl -sLf https://spacevim.org/install.sh | bash

[ ! -f $HOME/.mackup.cfg ] && ln -nfs $HOME/dotfiles/.mackup.cfg $HOME/.mackup.cfg

source $HOME/.zshrc

#/usr/local/bin/composer global require laravel/installer laravel/envoy laravel/valet tightenco/jigsaw
#$HOME/.composer/vendor/bin/valet install
#git clone git@github.com:laravel/homestead.git $HOME/Homestead
#[ $(basename $(pwd)) == "Homestead" ] && cd $HOME/Homestead
#vagrant box add laravel/homestead
