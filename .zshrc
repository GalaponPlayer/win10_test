# Created by newuser for 5.4.2
# 環境変数

# HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history

# COMPLETIONS
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
	fpath=(/usr/local/share/zsh-completions $fpath)
fi
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt list_packed
zstyle ':completion:*' list-colors ''
setopt correct
setopt no_beep

# PROMPT
autoload -Uz colors
PROMPT="%F{blue}[%~]%F%F{yellow}[%*]%F >%F{white}"
RPROMPT=""

