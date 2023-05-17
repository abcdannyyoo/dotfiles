source "$HOME/.config/zsh/.zshrc"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

source /Users/Danny.Yoo/.docker/init-zsh.sh || true # Added by Docker Desktop
