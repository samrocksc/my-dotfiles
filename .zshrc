# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
export ZSH=~/.oh-my-zsh

#Comment this out if MacOSx
source $ZSH/oh-my-zsh.sh

# General System Stuff
## Reload Fonts
alias reloadfonts='fc-cache -fv'
alias resource='source ~/.zshrc'
alias remux='tmux source ~/.tmux.conf'


code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}



# Node Shit
alias nmrimraf='rm -rf node_modules && rm -rf package-lock.json && npm i'
alias npmglobals='npm ls -g --depth 0'

# Test Shit
jsearch() { npx jest -t "$1" --watch  }

# google pubsub shit
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
alias dpostgres='sudo docker run --rm   --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data  postgres'


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
alias tf='terraform'

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
export PATH=$HOME/go/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$HOME/.local/kitty.app/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-14.jdk/Contents/Home/
export DENO_INSTALL="/Users/samuelclark/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

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


# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source /Users/samuelclark/.npm-run.plugin.zsh/npm-run.plugin.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# unset zle_bracketed_paste
# unset zle_bracketed_paste

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/samuelclark/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/samuelclark/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/samuelclark/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/samuelclark/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/samuelclark/Downloads/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/samuelclark/Downloads/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/samuelclark/Downloads/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/samuelclark/Downloads/google-cloud-sdk 2/completion.zsh.inc'; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/samuelclark/Downloads/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/samuelclark/Downloads/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/samuelclark/Downloads/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/samuelclark/Downloads/google-cloud-sdk 2/completion.zsh.inc'; fi
