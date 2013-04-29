export TERM="xterm-256color"
export EDITOR="emacsclient -c"
alias ec="emacsclient -c"
alias et="emacsclient -t"
alias es="emacsclient -c '(kill emacs)'; emacs --daemon"

alias magic-devel="ssh-add; ssh -AX tomas@magic-devel.int.wikidi.net"

setxkbmap -option ctrl:swapcaps -layout us 2>/dev/null #setxkbmap won't be on servers
