export TERM="xterm-256color"
export EDITOR="emacsclient -c"
ec () { emacsclient -c $1 & }
et () { emacsclient -t $1 & }
alias es="emacsclient -e '(kill-emacs)'; emacs --daemon"

alias magic-devel="ssh-add; ssh -A tomas@magic-devel.int.wikidi.net"
alias zima="ssh-add;ssh -A tomash@zima.int.wikidi.net"

setxkbmap -option ctrl:swapcaps -layout us 2>/dev/null #setxkbmap won't be on servers

export PATH=$PATH:$HOME/bin
