[[ -r "$ZSH_CONFIG_DIR/instant-prompt.zsh" ]] && source "$ZSH_CONFIG_DIR/instant-prompt.zsh"

for module in \
  antidote \
  p10k \
  history \
  completion \
  aliases \
  functions \
  integrations
do
  [[ -r "$ZSH_CONFIG_DIR/$module.zsh" ]] && source "$ZSH_CONFIG_DIR/$module.zsh"
done
