# If you come from bash you might have to change your $PATH.

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

export ZSH="/home/axel/.oh-my-zsh"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Zsh Theme

ZSH_THEME="agnoster"
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

# Load the shell dotfiles, and then some:
# * ~/.dotfiles-custom can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/shell/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

for file in ~/.dotfiles-custom/shell/.{exports,aliases,functions,zshrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Set Spaceship Zsh as a prompt

fpath=($fpath "/home/axel/.zfunctions")

autoload -U promptinit; promptinit
prompt spaceship

# Move into WSL home folder

cd /home/axel
