export ZDOTDIR=$HOME/.config/zsh

# Useful functions
source "$ZDOTDIR/zsh-functions"
source "$ZDOTDIR/azure-devops-script"

zsh_add_file "zsh-exports"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-prompt"

plugins=(git)

# No escaping or quoting
setopt NO_NOMATCH

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Default environment variables
export EDITOR="nvim"
export TERMINAL="wezterm"
export NVM_DIR=~/.nvm
