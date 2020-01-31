autoload -Uz compinit && compinit
autoload -U zmv

set -o emacs

alias grep='grep --color=auto'
alias ls='ls -F --color=auto'
alias ll='ls -lah'
alias mkdir='mkdir -p'
alias sysu='systemctl --user'

PROMPT='[%~]%% '

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history
setopt appendhistory sharehistory incappendhistory

setopt auto_cd
