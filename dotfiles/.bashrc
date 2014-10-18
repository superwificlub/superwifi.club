# ps1
export PS1="\[\e[00;37m\]\h \w \[\e[0m\]\[\e[00;35m\]\\$\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

# ~rey's classic ps1
# export PS1="\[\e[00;36m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;32m\]\h\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;35m\]%\[\e[0m\]\[\e[00;37m\] \[\e[0m\]"

# set default editors
EDITOR=/usr/bin/vim
VISUAL=/usr/bin/vim

# use vim mode in bash
set -o vi

# aliases
alias hash='date | md5sum | cut -c 1-6'
alias g='git'
alias grep='grep --color=auto'
alias j='jump'
alias ls='ls -lags'
alias qq='git status -sb'
alias sudo='sudo '
alias tmn="tmux new-session -s"
alias tml="tmux ls"
alias tma="tmux attach-session -t"
alias tms="tmux switch-session -t"
alias tree="tree -C"

# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html
export MARKPATH=$HOME/.marks
function jump { 
  cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
  mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
  rm -i "$MARKPATH/$1"
}
function marks {
  \ls -l "$MARKPATH" | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}
