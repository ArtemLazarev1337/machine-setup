config_modules=(
  instant-prompt
  history
  antidote
  completion
  aliases
  functions
  integrations
  p10k
)

for module in "${config_modules[@]}"; do
  [[ -r "$ZSH_CONFIG_DIR/$module.zsh" ]] && source "$ZSH_CONFIG_DIR/$module.zsh"
done
