# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

#Comment this out if MacOSx
source $ZSH/oh-my-zsh.sh
# source ~/.profile
alias blowcolon='docker run --rm -v /var/run/docker.sock:/var/run/docker.sock zzrot/docker-clean all'
alias gtw='cd ~/GitHub/work'
alias gtp='cd ~/GitHub/personal'
alias gtg='cd ~/go/src/github.com/samrocksc'
alias gentags='ctags -V -R --exclude=build --exclude=.git'
alias vim='nvim'
alias pgl='sudo -i -u postgres psql'
alias dpgl='psql -h localhost -p 5432 -U postgres'
alias uirestart='killall -KILL SystemUIServer && killall -KILL Finder && killall -KILL && killall -KILL NotificationCenter'
export PATH=/Applications/ngrok:$PATH
export PATH=~/.npm-global/bin:$PATH
#export PATH=~/Library/Python/2.7/bin/
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.fastlane/bin:$PATH"

export ANDROID_HOME=~/Library/Android/sdk/

DISABLE_AUTO_TITLE="true"
plugins=(git)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/samrocksc/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/samrocksc/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/samrocksc/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/samrocksc/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
