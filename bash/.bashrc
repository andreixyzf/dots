#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

 # Basics
stty -ixon
shopt -s autocd
HISTSIZE= HISTFILESIZE=

 # Promt and colors:
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
alias ls='ls --color=auto'
alias grep='grep --color=auto'

 # Vi mode:
set -o vi
export EDITOR='vi'
export VISUAL='vi'

 # Aliases:
source $HOME/.config/.aliasrc
