# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH="$PATH:$HOME/.composer/vendor/bin"

export PATH="$PATH:$HOME/.config/composer/vendor/bin"

export PATH=$HOME/.npm-global/bin:$PATH

# Path to your oh-my-zsh installation.

export ZSH="$HOME/.oh-my-zsh"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Zsh Theme

ZSH_THEME="spaceship"
HIST_STAMPS='dd/mm/yyyy'

# Zsh Autocomplete

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Preferred editor for local and remote sessions

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Custom Theme

SPACESHIP_TIME_SHOW='true'
SPACESHIP_USER_SHOW='always'
SPACESHIP_NODE_SHOW='false'
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_DOCKER_SHOW=false

# Load the shell dotfiles, and then some:
# * ~/.dotfiles-custom can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/shell/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

for file in ~/.dotfiles-custom/shell/.{exports,aliases,functions,zshrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

fpath=($fpath "$HOME/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
