# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#Comment this out if MacOSx
source $ZSH/oh-my-zsh.sh

#taskwarrior
alias ta='task add'
alias tstart='task start'
alias tstop='task stop'
alias tcomp='task done'
alias tm='task modify'
alias td='task delete'
alias tla='task list'
alias tlc='task completed'
alias tbd='task burndown.daily'
alias tbw='task burndown.weekly'
alias tbm='task burndown.monthly'

# General Aliases
alias getmyip='dig +short myip.opendns.com @resolver1.opendns.com'
alias uirestart='killall -KILL SystemUIServer && killall -KILL Finder && killall -KILL && killall -KILL NotificationCenter'
alias rni='react-native run-ios'
alias rna='react-native run-android'
alias rnrimraf='rm -rf node_modules && npm i && npm start'
alias devices='instruments -s devices'

# Docker
alias dc='docker-compose'
alias dcr='docker-compose restart'
alias dcrimraf='docker-compose stop && docker-compose up'
alias dcrapi='docker-compose restart api'
alias dex='docker exec -t'


# source ~/.profile
alias blowcolon='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock zzrot/docker-clean all'

# Folder Aliases
alias gts='cd ~/sync/Documents'
alias gtw='cd ~/GitHub/work'
alias gtp='cd ~/GitHub/personal'
alias gtm='cd ~/GitHub/modules'
alias gtg='cd ~/go/src/github.com/samrocksc'
alias gtiosdb='/Users/sam/Library/Developer/CoreSimulator/Devices'

# Vim aliases
alias gentags='ctags -R api authenticator aws-lambda frontend HeliaConnect lib shared && sed -i ‘’ -E ‘/^(if|switch|function|module\.exports|it|describe).+language:js$/d’ tags'
alias vim='nvim'

# Postgres Aliases
alias pgl='sudo -i -u postgres psql'
alias dpgl='psql -h localhost -p 5432 -U postgres'
alias startandroid='cd /Users/sam/Library/Android/sdk/emulator && ./emulator -avd pixel23 -writable-system'

# Git Aliases
alias skittles='git log --graph --decorate'

export PATH=/Applications/ngrok:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.fastlane/bin:$PATH"
#export PATH=~/Library/Python/2.7/bin/
export PATH=/Users/sam/Library/Python/3.6/bin:$PATH

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/emulator:$PATH
# export PATH=$ANDROID_HOME/tools:$PATH
# export PATH=$ANDROID_HOME/platform-tools
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home

DISABLE_AUTO_TITLE="true"
plugins=(git)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Stupid fucking notes about OSX
# If you want to show dotfiles, CMD+SHIFT+.

