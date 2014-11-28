export TERM="xterm-256color"
export EDITOR="emacsclient -c"
ec () { emacsclient -c $1 & }
et () { emacsclient -t $1 & }
alias es="emacsclient -e '(kill-emacs)'; emacs --daemon"

alias zima="ssh-add;ssh -A tomash@zima.int.wikidi.net"
alias chicago="ssh golem@chicago.wikidi.net"
alias cisar="ssh -A golem@cisar.int.wikidi.net"
alias wikidi="cd ~/workspace/wikidi"

PROJECT_PATHS=(~/workspace/wikidi ~/workspace)

setxkbmap -option ctrl:swapcaps -layout us 2>/dev/null #setxkbmap won't be on servers

export PATH=$PATH:$HOME/bin
export GRADLE_OPTS='-Dorg.gradle.daemon=true'

upload() {
    name=$1
    shift
    scp $@ golem@$name.wikidi.net:'~';
}
