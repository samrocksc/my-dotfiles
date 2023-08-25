# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH settings
DISABLE_AUTO_TITLE="true"
ZSH_THEME="robbyrussell"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# user shit

## alias shit
alias nv='neovide --multigrid .'

### general shit
alias resource='source ~/.zshrc'
alias remux='tmux source ~/.tmux.conf'
alias weather="curl wttr.in/berlin"
alias getmyip='dig +short myip.opendns.com @resolver1.opendns.com'
alias tf='terraform'
alias vim='nvim'
alias lvim='~/.local/bin/lvim'

alias installnerdfont='brew tap homebrew/cask-fonts && brew install --cask font-fira-code-nerd-font'

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
alias gts='cd $HOME/sync/Documents'
alias gtw="cd $HOME/GitHub/work"
alias gtp='cd $HOME/GitHub/personal'
alias gtm='cd $HOME/GitHub/modules'
alias gtg='cd $HOME/go/src/github.com/samrocksc'
alias guntrack='git rm --cached'

### Expose Ports
alias ngmysql='ngrok tcp 3306'
alias sqltime='sqlpad --dbPath=~./db  --port 2929'
qlTunnel3307() { ssh -L 3307:host:3306 sam@an.ip.here
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


## path shit
export PATH="$HOME/.local/share/applications:$PATH"
export PATH="/usr/local/bin:$PATH"
export DENO_INSTALL="/Users/sam/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.local/share/pypoetry/venv/bin:$PATH"
export PATH="/opt/Logseq-linux-x64:$PATH"
export PATH="$HOME/.cargo/env:$PATH"


source ~/.local.env

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# eval "$(/bin/brew shellenv)"


## pyenv shit
# alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
