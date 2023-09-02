 #  _______| |__  _ __ ___
 # |_  / __| '_ \| '__/ __|
 #  / /\__ \ | | | | | (__
 # /___|___/_| |_|_|  \___|

 # Promt and colors:
autoload -U colors && colors
stty stop undef
setopt autocd
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

 # Autocomplete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
 # Use vim keys for the autocomplete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -v '^?' backward-delete-char

 # Vi mode:
bindkey -v
export KEYTIMEOUT=1

 # Keybinds:
bindkey -s '^o' '^uranger\n' # Use Ctrl-O To Open Ranger
bindkey -s '^t' '^utremc\n' # Use Ctrl-T To Open Transmission-Remote-Cli

 # Enable syntax highlighting.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
