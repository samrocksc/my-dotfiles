source $HOME/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle deno
antigen bundle dotenv
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle docker
antigen bundle fzf

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

### general shit
alias resource='source ~/.zshrc'
alias remux='tmux source ~/.tmux.conf'
alias weather="curl wttr.in/berlin"
alias getmyip='dig +short myip.opendns.com @resolver1.opendns.com'
alias tf='terraform'
alias vim='nvim'
alias lvim='~/.local/bin/lvim'

#awesome shit
# make it happen
gls() {
  clear
  pwd
  nvm version
  git status
  ls -la
}

### docker shit
alias catdocker='cat ~/.zshrc | grep docker'
alias dc='docker compose'
alias dcr='docker compose restart'
alias dcrsb='docker compose restart frontend-storybook'
alias dclogs='docker compose logs -f'
alias dcrimraf='docker compose stop && docker compose up'
alias dcrapi='docker compose restart api'
alias dcrfe='docker compose restart frontend'
alias dcps='docker compose ps'
alias dps='docker ps'
alias dex='docker exec -t'
alias dimages='docker images'
alias startpostgres='sudo docker run --rm   --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 -v $HOME/docker/volumes/postgres:/var/lib/postgresql/data  postgres'
alias startredis='docker run -p 6379:6379 redis '
# TODO: Connect to a docker container's bash
# docker exec -it <mycontainer> bash

### yarn shit

### npm shit
alias ghLogout='npm logout --registry=https://npm.pkg.github.com'
alias ghLogin='npm login --registry=https://npm.pkg.github.com'
alias npmLogin='npm login --registry=https://registry.npmjs.org/'
alias npmLogout='npm logout --registry=https://registry.npmjs.org/'
alias npmGlobalPackages='npm list -g --depth 0'
alias nmrimraf='rm -rf node_modules && rm -rf package-lock.json && npm i'



### folder shit
alias catcd='cat $HOME/.zshrc | grep cd'
alias cstash='git stash show -p stash@{0}'
alias gts='cd $GH_HOME/GitHub/sync/Documents'
alias gtw="cd $GH_HOME/GitHub/work"
alias gtp='cd $GH_HOME/GitHub/personal'
alias gtm='cd $GH_HOME/GitHub/modules'
alias gtd='cd $GH_HOME'
alias gtc='cd /mnt/c/Users/samro'
alias guntrack='git rm --cached'

### Expose Ports
alias ngmysql='ngrok tcp 3306'
alias sqltime='sqlpad --dbPath=~./db  --port 2929'
qlTunnel3307() { 
  ssh -L 3307:host:3306 sam@an.ip.here
}

### Git shit
alias skittles='git log --graph --decorate'
alias gco='git checkout'
alias grs='git reset --soft HEAD^'
alias glog="git log --pretty=format:\"%C(yellow)\%h\%Cred\%d\\ \%Creset\%s\%Cblue\\ [\%cn]\" --decorate --numstat"
alias catgit='cat ~/.zshrc | grep git'
alias ga='git add -p'
alias gaa='git add'
alias gu='git add -u'
alias gd='git diff'
alias gdc='git diff --cached'

## hx shit

## path shit
export PATH="$HOME/.local/share/applications:$PATH"
export PATH="/usr/local/bin:$PATH"
export DENO_INSTALL="/Users/sam/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.cargo/env:$PATH"
export PATH=$PATH:/usr/local/go/bin
export PATH="/home/linuxbrew/.linuxbrew/opt/llvm/bin:$PATH"



source ~/.local.env

# FZF shit
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Pyenv shit
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

. "/Users/sam/.deno/env"
