# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#Comment this out if MacOSx
source $ZSH/oh-my-zsh.sh

# System Files
alias squidconf="sudo vim /usr/local/squid/etc/squid.conf" # Edit Squid ACL
alias crap="node --inspect-brk=0.0.0.0:9229"

# SAM Aliases
samnoev() {
  sam local invoke $1 --env-vars env.json --no-event
}
samev() {
  sam local invoke $1 --env-vars env.json -e src/"$1"/event.json
}

mkbackup() {
    #do things with parameters like $1 such as
    mv "$1" "$1.bak"
    cp "$2" "$1"
}

#taskwarrior
alias cattask='cat ~/.zshrc | grep task'
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
alias swaggereditor='docker run --name openapi-gui -p 3137:3000 -d mermade/openapi-gui'

# React Native
alias rni='react-native run-ios'
alias rna='react-native run-android'
alias rnrimraf='rm -rf node_modules && npm i && npm start'
alias devices='instruments -s devices'
alias adbmenu='adb shell input keyevent 82'

# GoLang
alias godev='realize start'
alias gpm='dep ensure'
alias gpu='dep ensure -update'

# Node
alias nmrimraf='rm -rf node_modules && npm i'

# Docker
alias catdocker='cat ~/.zshrc | grep docker'
alias dc='docker-compose'
alias dcr='docker-compose restart'
alias dcrsb='docker-compose restart frontend-storybook'
alias dclogs='docker-compose logs -f'
alias dcrimraf='docker-compose stop && docker-compose up'
alias dcrapi='docker-compose restart api'
alias dcrfe='docker-compose restart frontend'
alias dcps='docker-compose ps'
alias dps='docker ps'
alias dex='docker exec -t'
alias dimages='docker images'

# source ~/.profile
alias blowcolon='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock zzrot/docker-clean all'
alias colonblow='sudo rm -rf /private/var/log/*'

# Folder Aliases
alias catcd='cat ~/.zshrc | grep cd'
alias gts='cd ~/sync/Documents'
alias gtw='cd ~/GitHub/work'
alias gtp='cd ~/GitHub/personal'
alias gtm='cd ~/GitHub/modules'
alias gtg='cd ~/go/src/github.com/samrocksc'
alias gtiosdb='/Users/sam/Library/Developer/CoreSimulator/Devices'
alias guntrack='git rm --cached'

# Git Aliases
alias catgit='cat ~/.zshrc | grep git'
alias ga='git add -p'
alias gaa='git add'
alias gu='git add -u'
alias gd='git diff'
alias gdc='git diff --cached'

# Vim aliases
alias gentags='ctags -R fixtures src test api authenticator aws-lambda frontend lib shared --exclude=.git && sed -i ‘’ -E ‘/^(if|switch|function|module\.exports|it|describe).+language:js$/d’ tags'
alias gentagsNode='ctags -R api authenticator aws-lambda frontend lib shared --exclude=*node_modules --exclude=.git && sed -i ‘’ -E ‘/^(if|switch|function|module\.exports|it|describe).+language:js$/d’ tags'
alias vim='nvim'
alias gtags='ctags'

# Postgres Aliases
alias pgl='sudo -i -u postgres psql'
alias dpgl='psql -h localhost -p 5432 -U postgres'
alias startandroid='cd /Users/sam/Library/Android/sdk/emulator && ./emulator -avd pixel23 -writable-system'

# Git Aliases
alias skittles='git log --graph --decorate'
alias gco='git checkout'
alias grs='git reset --soft HEAD^'


alias glog="git log --pretty=format:\"%C(yellow)\%h\%Cred\%d\\ \%Creset\%s\%Cblue\\ [\%cn]\" --decorate --numstat"

export PATH=/Applications/ngrok:$PATH
export PATH=/Users/sam/Library/Android/sdk/platform-tools:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.fastlane/bin:$PATH"
#export PATH=~/Library/Python/2.7/bin/
export PATH=/Users/sam/Library/Python/3.6/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
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

# AWS Dynamo
alias dynoList='aws dynamodb list-tables --endpoint-url http://localhost:8000'


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

