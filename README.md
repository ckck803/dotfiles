# dotfiles

## bootstrap.sh

```shell
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
#[ ! -f $HOME/.zshrc ] && cd $position && ln -nfs $HOME/dotfiles/.zshrc $HOME/.zshrc
```

## bootstrap2.sh

```shell
# .zshrc가 존재하지 않을 경웈
if [ ! -f $HOME/.zshrc ]
then
    cp $HOME/dotfiles/mac/.zshrc $HOME/
else
# .zshrc가 존재할 경우
    ln -nfs $HOME/dotfiles/mac/.zshrc $HOME/.zshrc
fi

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

#powerlevel9k 설치
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

#zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#spacevim
curl -sLf https://spacevim.org/install.sh | bash
open SourceCodePro+Powerline+Awesome+Regular.ttf

[ ! -f $HOME/.mackup.cfg ] && ln -nfs $HOME/dotfiles/.mackup.cfg $HOME/.mackup.cfg

source $HOME/.zshrc

#/usr/local/bin/composer global require laravel/installer laravel/envoy laravel/valet tightenco/jigsaw
#$HOME/.composer/vendor/bin/valet install
#git clone git@github.com:laravel/homestead.git $HOME/Homestead
#[ $(basename $(pwd)) == "Homestead" ] && cd $HOME/Homestead
#vagrant box add laravel/homestead
```

## Brewfile

```
#tap
tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/core"
tap "homebrew/services"
tap "caskroom/fonts"

# 중요! 이 줄이 없으면, ~/Applications에 설치하므로 꼭 넣어야 한다.
cask_args appdir: '/Applications'

#Binaries/Libraries
brew 'zsh'
brew 'zsh-completions'
brew 'wget'
brew 'tmux'
brew 'git'
brew 'mackup'
brew 'neovim'
brew 'fzf'


# Applications
cask 'homebrew/cask-drivers/logitech-options'
cask 'iterm2'
cask 'google-chrome'
cask 'visual-studio-code'
cask 'android-studio'
cask 'karabiner-elements'
```