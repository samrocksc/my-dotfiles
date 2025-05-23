# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/sam/.zsh/completions:"* ]]; then export FPATH="/home/sam/.zsh/completions:$FPATH"; fi
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
alias zll='zellij --layout'
alias zl='zellij'
alias ls="lsd"
alias clipcarbon="xclip -o | carbon-now --to-clipboard"

### general shit
alias resource='source ~/.zshrc'
alias remux='tmux source ~/.tmux.conf'
alias weather="curl wttr.in/berlin"
alias getmyip='curl -4 -s https://ifconfig.me'
alias tf='terraform'
alias vim='nvim'

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

### kube shit
alias mk="minikube kubectl --"

### yarn shit

### npm shit
alias ghLogout='npm logout --registry=https://npm.pkg.github.com'
alias ghLogin='npm login --registry=https://npm.pkg.github.com'
alias npmLogin='npm login --registry=https://registry.npmjs.org/'
alias npmLogout='npm logout --registry=https://registry.npmjs.org/'
alias npmGlobalPackages='npm list -g --depth 0'
alias nmrimraf='rm -rf node_modules && rm -rf package-lock.json && npm i'

### backup shit
alias backupnvim=''
alias backupzsh='cp ~/.zshrc ~/my-dotfiles/.zshrc.ubuntu'

### folder shit
alias gtw='cd $HOME/GitHub/work'
alias gtp='cd $HOME/GitHub/personal'
alias gtm='cd $HOME/GitHub/modules'
alias gtg='cd $HOME/go/src/github.com/samrocksc'
alias gtsnaps='cd $HOME/snap'
alias gtapps='cd $HOME/.local/share/applications'
alias gtsysapps='cd /usr/share/applications'
alias guntrack='git rm --cached'

### config
alias conf-nvim='vim ~/.config/nvim'
alias conf-zsh='vim ~/.config/zshrc'
alias conf-ghostty='vim ~/.config/ghostty/config'
alias conf-zellij='vim ~/.config/zellij'
alias conf-apps='vim ~/.local/share/applications'
alias conf-alacritty='vim ~/.config/alacritty/alacritty.toml'

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
export PATH="$HOME/.local/bin:$PATH"
export DENO_INSTALL="/Users/sam/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.local/share/pypoetry/venv/bin:$PATH"
export PATH="$HOME/.cargo/env:$PATH"
# export PATH="/opt/zen:$PATH"

## Tmux Shit
systerm() {
  if ! tmux list-windows -F "#{window_index}" | grep -q "^2$"; then
    tmux new-window -t :2 -n "systems" "tmux split-window -v -c ~/GitHub/work/api/packages/api \; split-window -h -c ~/GitHub/work/website \; split-window -v -c ~/GitHub/work/crm \; select-pane -t 2 \; split-window -v -c ~/GitHub/work/landlord-dashboard"
  else
    tmux new-window -n "systems" "tmux split-window -v -c ~/GitHub/work/api/packages/api \; split-window -h -c ~/GitHub/work/website \; split-window -v -c ~/GitHub/work/crm \; select-pane -t 2 \; split-window -v -c ~/GitHub/work/landlord-dashboard \;  swap-window -t 2;"
  fi
}

paneterm() {
  tmux new-window -n "app" "tmux split-window -v \; split-window -h \; select-pane -t 0 \; split-window -v \;"
}

hometerm() {
  tmux new-window -n "home" "tmux split-window -v \; split-window -h \; select-pane -t 0 \; swap-window -t 1;"
}

audioreset() {
  pw-metadata -n settings 0 clock.force-rate 44100
  # copy the default config to `/etc/pipewire` for editing
  export newConf=/etc/pipewire/pipewire-pulse.conf
  sudo mkdir -p $(dirname $newConf)
  sudo cp /usr/share/pipewire/pipewire-pulse.conf $newConf

  # uncomment and change the value from 128 to 1024
  sudo sed -i.bak 's/#pulse.min.quantum      = 128\/48000     # 2.7ms/pulse.min.quantum      = 2048\/48000/' $newConf

  # check if the sed command successfully changed the config, log should show 1024
  cat $newConf | grep "pulse.min.quantum"

  # after changing the config, restart the audio services
  systemctl --user restart wireplumber pipewire pipewire-pulse
  # I restart the computer too
}


source ~/.local.env

source <(fzf --zsh)
# eval "$(/bin/brew shellenv)"


## pyenv shit
# alias brew='env PATH="${PATH//$(pyenv root)\/shims:/}" brew'

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
. "/Users/sam/.deno/env"
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/sam/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/sam/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/sam/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/sam/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
