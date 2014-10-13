export TERM=xterm-256color
S='/home/share/bin'
export PATH=$PATH:$S/python-3.2.4/bin/bin:$S/python-2.7.4/bin/bin:$S/emacs-24.3/src:$S/emacs-24.3/lib-src:$S/git-fat:$S/ag:$S/tig

env python3.2=$S/python-3.2.4/bin/bin/python3.2 > /dev/null
env python2.7=$S/python-3.2.4/bin/bin/python2.7 > /dev/null

alias ec="emacsclient -t $@"
alias es="killall emacs; emacs --daemon"
