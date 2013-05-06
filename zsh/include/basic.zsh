export TERM="xterm-256color"
export EDITOR="emacsclient -c"
alias ec="emacsclient -c -a"
alias et="emacsclient -t -a"
alias es="emacsclient -c '(kill emacs)'; emacs --daemon"

alias magic-devel="ssh-add; ssh -A tomas@magic-devel.int.wikidi.net"

setxkbmap -option ctrl:swapcaps -layout us 2>/dev/null #setxkbmap won't be on servers
