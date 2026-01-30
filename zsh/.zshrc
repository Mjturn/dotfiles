PROMPT="%n@%m %~ %# "

autoload -Uz compinit
compinit
zstyle ":completion:*" menu select

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -v
