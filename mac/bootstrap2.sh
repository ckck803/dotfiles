#!/bin/zsh

# .zshrc가 존재하지 않을 경웈
if [ ! -f $HOME/.zshrc ]; then
    cp $HOME/dotfiles/mac/.zshrc $HOME/
else
    # .zshrc가 존재할 경우
    ln -nfs $HOME/dotfiles/mac/.zshrc $HOME/.zshrc
fi

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

# powerlevel9k 설치
# git clone https://github.com/bhilburn/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# spacevim
curl -sLf https://spacevim.org/install.sh | bash
open SourceCodePro+Powerline+Awesome+Regular.ttf

# rbenv.sh 실행
sh ./rbenv.sh

[ ! -f $HOME/.mackup.cfg ] && ln -nfs $HOME/dotfiles/.mackup.cfg $HOME/.mackup.cfg

source $HOME/.zshrc

#/usr/local/bin/composer global require laravel/installer laravel/envoy laravel/valet tightenco/jigsaw
#$HOME/.composer/vendor/bin/valet install
#git clone git@github.com:laravel/homestead.git $HOME/Homestead
#[ $(basename $(pwd)) == "Homestead" ] && cd $HOME/Homestead
#vagrant box add laravel/homestead
