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
# export NVM_DIR="$HOME/.nvm"
#   [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#   [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# ZSH AUTO SUGGESTIONS
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# ZSH SYNTAX HIGHLIGHTING
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
