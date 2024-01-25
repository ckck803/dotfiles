# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

ZSH_DISABLE_COMPFIX="true"

export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#powerlevel9k 테마
ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_COLOR_SCHEME='white'

#powerlevel9k 폰트 관련
#POWERLEVEL9K_MODE='awesome-patched'
#POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_MODE='nerdfont-complete'
#source ~/powerlevel9k/powerlevel9k.zsh-theme

#powerlevel9k 아이콘 관련

# os icon
# POWERLEVEL9K_OS_ICON_BACKGROUND="black"
# POWERLEVEL9K_OS_ICON_FOREGROUND="196"

# dir icon
# POWERLEVEL9K_DIR_HOME_FOREGROUND="195"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="195"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="195"

# 배터리와 관련된 부분
# POWERLEVEL9K_BATTERY_CHARGING='yellow'
# POWERLEVEL9K_BATTERY_CHARGED='green'
# POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
# POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
# POWERLEVEL9K_BATTERY_LOW_COLOR='red'
# POWERLEVEL9K_BATTERY_ICON='\uf1e6'
# POWERLEVEL9K_BATTERY_CHARGING_ICON='\uf1e6'
# POWERLEVEL9K_BATTERY_CHARGED_ICON='\uf1e6'
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'

# 오른쪽 시간과 관련된 부분
# POWERLEVEL9K_TIME_BACKGROUND='white'
# POWERLEVEL9K_CUSTOM_TIME_FORMAT="%D{\uf017 %H:%M:%S}"
# POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %y.%m.%d}"

# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status nvm time battery dir_writable)

# 밑에 입력하는 부분
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
# POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    fasd
    docker
    docker-compose
)

source $ZSH/oh-my-zsh.sh

# autoload -U promptinit
# promptinit
# prompt pure

# alias cat="bat"
alias vi="nvim"
alias vimdiff="nvim -d"
export EDITOR=/usr/local/bin/nvim
alias mux="tmuxinator"
alias ls="colorls"
alias vscode="$HOME/dev/vscode.sh"
alias touchmd="$HOME/dev/touchmd.sh"
# python3
alias python="python3"
alias pip="pip3"

# export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fia

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
# export PATH="$HOME/.rbenv/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export CLICOLOR=1

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# Go언어 환경 변수 설정
#export PATH=$GOPATH/bin:$PATH
#export GOBIN=$HOME/go/bin
#export GOPATH=$HOME/go
export GOPATH=$HOME/code/go/go_study
export PATH=$GOPATH/bin:$PATH

# rbenv 환경 변수 설정
alias ls=colorls

# pyenv 환경 변수 설정
#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# JAVA 환경 변수 설정
# JDK 1.8
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
# export PATH=$JAVA_HOME/bin:$PATH

# JDK 11
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@11/11.0.21/libexec/openjdk.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH

# JDK 17
export JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.9/libexec/openjdk.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH

# export MAVEN_HOME=/Users/dongwoo-yang/devops/apache-maven-3.9.5/bin/
# export PATH=$MAVEN_HOME/bin:$PATH

# export ES_JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.7/libexec/openjdk.jdk/Contents/Home/
# export PATH=$ES_JAVA_HOME/bin:$PATH

# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/dongwoo-yang/anaconda3/bin/conda' shell.bash hook 2>/dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/dongwoo-yang/anaconda3/etc/profile.d/conda.sh" ]; then
        # . "/Users/dongwoo-yang/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/dongwoo-yang/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# apache tomcat
alias tomcat="/usr/local/Cellar/tomcat/9.0.22/bin/catalina"

export PATH=/usr/local/texlive/2019/bin/x86_64-darwin:$PATH

# AWS key folder
export key_folder="$HOME/Documents/dev/key/"

# django-server
export server_env=$HOME/.pyenv/versions/env_server/bin/activate
alias ls=colorls

# beakjoon 알고리즘
alias beakjoon=$HOME/dev/cpp/beakjoon/
# crawling
alias crawling=$HOME/dev/python/crawling/
# django
alias django=$HOME/dev/python/django/
# mongodb
export PATH=/usr/local/mongodb/bin:$PATH

# export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-13.jdk/Contents/Home
# export PATH=$JAVA_HOME/bin:$PATH

# export PATH="$(yarn global bin)":$PATH
# export PATH="$PATH:$(yarn global bin)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

## rabbitmq
export PATH=$PATH:/usr/local/sbin

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/dongwoo-yang/dev/code-download/velog-master/velog-ssr/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/dongwoo-yang/dev/code-download/velog-master/velog-ssr/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/dongwoo-yang/dev/code-download/velog-master/velog-ssr/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/dongwoo-yang/dev/code-download/velog-master/velog-ssr/node_modules/tabtab/.completions/sls.zsh

# kubernates Alias
alias k=kubectl
export KUBE_EDITOR='code --wait'
export K9S_EDITOR='code --wait'

# source /Users/dongwoo-yang/.docker/init-zsh.sh || true # Added by Docker Desktop

export PATH=${HOME}/.rbenv/bin:${PATH}
# export RBENV_ROOT=/opt/homebrew/opt/rbenv
eval "$(rbenv init - zsh)"

export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"
# export RBENV_ROOT=$HOME/.rbenv
# export PATH="$HOME/.rbenv/shims:$PATH"
# export PATH=$RBENV_ROOT/shims:/versions:$PATH
# eval "$(rbenv init - zsh)"
# [[ -d ~/.rbenv ]] &&
#     export PATH=${HOME}/.rbenv/bin:${PATH} &&
#     eval "$(rbenv init -)"

# export PATH="/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/dongwoo-yang/Library/Application Support/JetBrains/Toolbox/scripts":${PATH}

export PATH="/Users/dongwoo-yang/Library/Application Support/JetBrains/Toolbox/scripts":${PATH}
export PATH=/opt/homebrew/bin:${PATH}
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# openssl
# export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
# export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=/opt/homebrew/opt/openssl@1.1"

# Setup Compiler paths for readline and openssl
local READLINE_PATH=$(brew --prefix readline)
local OPENSSL_PATH=$(brew --prefix openssl)
export LDFLAGS="-L$READLINE_PATH/lib -L$OPENSSL_PATH/lib"
export CPPFLAGS="-I$READLINE_PATH/include -I$OPENSSL_PATH/include"
export PKG_CONFIG_PATH="$READLINE_PATH/lib/pkgconfig:$OPENSSL_PATH/lib/pkgconfig"

# Use the OpenSSL from Homebrew instead of ruby-build
# Note: the Homebrew version gets updated, the ruby-build version doesn't
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$OPENSSL_PATH"

# Place openssl@1.1 at the beginning of your PATH (preempt system libs)
export PATH=$OPENSSL_PATH/bin:$PATH


# Extract the latest version of Ruby so you can do this:
# rbenv install $LATEST_RUBY_VERSION
export LATEST_RUBY_VERSION=$(rbenv install -l | grep -v - | tail -1)


export CFLAGS="-Wno-error=implicit-function-declaration" 
export RUBY_CONFIGURE_OPTS='--with-readline-dir=/usr/local/opt/readline/' 
# arch -x86_64 rbenv install 2.1.0

# export SONAR_HOME=/usr/local/Cellar/sonar-scanner/{version}/libexec 
# export SONAR=$SONAR_HOME/bin export PATH=$SONAR:$PATH
