[[ -r "$ZSH_CONFIG_DIR/instant-prompt.zsh" ]] && source "$ZSH_CONFIG_DIR/instant-prompt.zsh"

for module in \
  history \
  completion \
  antidote \
  p10k \
  aliases \
  functions \
  integrations
do
  [[ -r "$ZSH_CONFIG_DIR/$module.zsh" ]] && source "$ZSH_CONFIG_DIR/$module.zsh"
done
