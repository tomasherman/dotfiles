export TERM="xterm-256color"
export EDITOR="emacsclient -c"

export LC_CTYPE="en_US.UTF-8"
ec () { emacsclient -a '' -c $@ & }
et () { emacsclient -a '' -t $@ }
emacs () { emacsclient -a '' -c $@ & }

alias deft="ec --eval '(deft)'"
alias es="emacsclient -e '(kill-emacs)' ; ec"
alias es-nore="emacs --daemon"
alias gb="./gradlew build"
alias gt="./gradlew test"
alias gf="./gradlew scalafmt"
alias gc="./gradlew clean"

cqlsh-avast () {
    usage="connect to cassandra server using cqlsh - args: keyspace username node port"

    if [ "$1" = "-h" ] ; then
        echo $usage
    fi

    if [ "$#" -ne 4 ] ; then
        echo $usage
    fi

    if [ "$#" -eq 4 ] ; then
        # args: keyspace username server port
        docker run -it --rm cassandra sh -c "export SSL_VALIDATE=false; exec cqlsh --ssl -k ${1} -u ${2} ${3} ${4}"
    fi
}

## bash emacs mode
bindkey -e

PROJECT_PATHS=(~/workspace/wikidi ~/workspace)

setxkbmap -option ctrl:swapcaps -layout us 2>/dev/null #setxkbmap won't be on servers

export PATH=$PATH:$HOME/bin:~/Library/Python/3.7/bin
export GRADLE_OPTS='-Dorg.gradle.daemon=true'

upload() {
    name=$1
    shift
    scp $@ golem@$name.wikidi.net:'~';
}

# . /usr/local/etc/profile.d/z.sh
