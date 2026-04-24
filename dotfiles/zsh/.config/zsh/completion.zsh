autoload -Uz compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/zcompdump"
