# ps1
export PS1="\[\e[00;37m\]\h \w \[\e[0m\]\[\e[00;35m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

# set default editors
EDITOR=/usr/bin/vim
VISUAL=/usr/bin/vim

# use vim mode in bash
# set -o vi

# aliases
alias g='git'
alias ls='ls -lags'
alias qq='git status -sb'
alias sudo='sudo '
alias tmn="tmux new-session -s"
alias tml="tmux ls"
alias tma="tmux attach-session -t"
alias tms="tmux switch-session -t"
alias tree="tree -C"
alias v="vim"
