# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

#Comment this out if MacOSx
source $ZSH/oh-my-zsh.sh
alias pgl='sudo -i -u postgres psql'
alias dpgl = 'psql -h localhost -p 5432 -U postgres'

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export PATH=~/.npm-global/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

# Setting up nvim for all editors
#sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
#sudo update-alternatives --config vi
#sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
#sudo update-alternatives --config vim
#sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
#sudo update-alternatives --config editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


