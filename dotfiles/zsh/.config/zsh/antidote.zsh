# Antidote installed via Homebrew:
#   brew install antidote

ANTIDOTE_FUNCTIONS="$(brew --prefix)/share/antidote/functions"
ZSH_PLUGINS="$ZSH_CONFIG_DIR/zsh_plugins"

if [[ ! -d "$ANTIDOTE_FUNCTIONS" ]]; then
  print -u2 "antidote: not found. Install it with: brew install antidote"
  return 1
fi

fpath=("$ANTIDOTE_FUNCTIONS" $fpath)
autoload -Uz antidote

[[ -f "${ZSH_PLUGINS}.txt" ]] || touch "${ZSH_PLUGINS}.txt"

# Rebuild when the bundle is missing, empty, or older than the plugin manifest.
if [[ ! -s "${ZSH_PLUGINS}.zsh" || ! "${ZSH_PLUGINS}.zsh" -nt "${ZSH_PLUGINS}.txt" ]]; then
  antidote bundle < "${ZSH_PLUGINS}.txt" >| "${ZSH_PLUGINS}.zsh"
fi

source "${ZSH_PLUGINS}.zsh"
