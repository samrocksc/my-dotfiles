alias suspend=sudo sh -c "echo mem > /sys/power/state"
###########################
#########UBUNTU RC#########
###########################

### Dependencies
# zsh
# oh-my-zsh
# curl
# i3lock
# i3
# go
# node
# git
# yarn
# nvm
# python 3

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
export ZSH=~/.oh-my-zsh

#Comment this out if MacOSx
source $ZSH/oh-my-zsh.sh

#system commands
alias hibernate="systemctl hibernate"
alias lock="i3lock -c 000000"

alias weather="curl wttr.in/berlin"
alias getmyip='dig +short myip.opendns.com @resolver1.opendns.com'
alias getnews="curl http://getnews.tech/"
# map Q :r!curl -s 'wttr.in/berlin'<cr>


# General System Stuff
## Reload Fonts
alias reloadfonts='fc-cache -fv'
alias resource='source ~/.zshrc'
alias remux='tmux source ~/.tmux.conf'

# TODO: Connect to a docker container's bash
# docker exec -it <mycontainer> bash

alias mysetup='inxi -Fxzd '


alias tf='terraform'
alias tb='taskbook'

# Node Shit
alias nmrimraf='rm -rf node_modules && rm -rf package-lock.json && npm i'

# linux shit
resetbt() {
  sudo service bluetooth restart
}

# ngrok shit
ngrokIt() {  }

# Test Shit
jsearch() { npx jest -t "$1" --watch  }

# make it happen
gls() {
  clear
  pwd
  nvm version
  git status
  ls -la
}


 # google cloud shit
gcplogs() {
  gcloud functions logs read --region europe-west1 "$1"
}
gpsCreateTopic() { gcloud pubsub topics create "$1" }
gpsCreateSubscription() {
  local deadline="${3:10}"
  gcloud pubsub subscriptions create "$1" --topic="$2" --ack-deadline="$deadline"
}
gpsPublishMessage() {
  local message="${2:'Hello World'}"
  gcloud pubsub topics publish "$1" --message="$message"
}
gpsPullSubscription() {gcloud pubsub subscriptions pull --auto-ack $1}
alias gai="gcloud alpha interactive"

gcloudSwitchProjects() {
  gcloud config set project $2
}

kbPrintSettings() {
  kubectl config view --minify --raw
}


# taskwarrior
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
alias startpostgres='sudo docker run --rm   --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data  postgres'
alias startredis='docker run -p 6379:6379 redis '


# source ~/.profile
alias blowcolon='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock zzrot/docker-clean all'
alias colonblow='sudo rm -rf /private/var/log/*'

# Folder Aliases
alias cstash='git stash show -p stash@{0}'
alias catcd='cat ~/.zshrc | grep cd'
alias gts='cd ~/sync/Documents'
alias gtw='cd ~/GitHub/work'
alias gtp='cd ~/GitHub/personal'
alias gtm='cd ~/GitHub/modules'
alias gtg='cd ~/go/src/github.com/samrocksc'
alias guntrack='git rm --cached'

# Git Aliases
alias catgit='cat ~/.zshrc | grep git'
alias ga='git add -p'
alias gaa='git add'
alias gu='git add -u'
alias gd='git diff'
alias gdc='git diff --cached'

# ctags shit
alias gentags='ctags -R src && sed -i ‘’ -E ‘/^(if|switch|function|module\.exports|it|describe).+language:js$/d’ tags'


alias vim='nvim'

# Postgres shit
alias pgl='sudo -i -u postgres psql'
alias dpgl='psql -h localhost -p 5432 -U postgres'

# Git shit
alias skittles='git log --graph --decorate'
alias gco='git checkout'
alias grs='git reset --soft HEAD^'


alias glog="git log --pretty=format:\"%C(yellow)\%h\%Cred\%d\\ \%Creset\%s\%Cblue\\ [\%cn]\" --decorate --numstat"

# path shit
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.cargo/bin:$PATH
export PATH=/opt/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/.local/kitty.app/bin:$PATH
export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
export DENO_INSTALL="/home/sam/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/share/applications:$PATH"


# Expose Ports
alias ngmysql='ngrok tcp 3306'
alias sqltime='sqlpad --dbPath=~./db  --port 2929'
qlTunnel3307() { ssh -L 3307:host:3306 sam@an.ip.here
}

# NPM stuff
alias ghLogout='npm logout --registry=https://npm.pkg.github.com'
alias ghLogin='npm login --registry=https://npm.pkg.github.com'
alias npmLogin='npm login --registry=https://registry.npmjs.org/'
alias npmLogout='npm logout --registry=https://registry.npmjs.org/'
alias npmGlobalPackages='npm list -g --depth 0'

DISABLE_AUTO_TITLE="true"
plugins=(git)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

ZSH_DISABLE_COMPFIX=true


export PATH="$HOME/.cabal/bin:$PATH"
export PATH="/home/sam/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/sam/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/sam/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/sam/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/sam/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
# git config credential.helper store

alias kubedev="gcloud container clusters get-credentials gke-cluster-staging-private \
  --region=europe-west3 \
  --project=hfc-experiments"
alias kubestage="gcloud container clusters get-credentials gke-cluster-staging \
  --region=europe-west3 \
  --project=hfc-stage"


# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

source ./.localenv
 
add-zsh-hook chpwd load-nvmrc
load-nvmrc
