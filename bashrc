###################
# Personal Settings
###################
source ~/.git-prompt.sh

export TERM=xterm-256color

# Make basic commands more error proof or useful
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias du='du -kh'
alias df='df -kTh'
alias gmeld='meld .'

# Ease of use shortcuts
alias vi='vim'
alias vrc='vi ~/.vimrc'
alias brc='vi ~/.bashrc'
alias src='source ~/.bashrc'
alias ys='sudo yum search'
alias yi='sudo yum install'
alias h='history'
alias his='history | grep '
alias cl='clear; pwd; ls'
alias j='jobs -l'
alias ..='cd ..; pwd; ls'
alias c='cd ..; pwd;'
alias ll='ls -lG'

# increase bash history
HISTSIZE=10000
HISTFILESIZE=10000

# Disable annoying freezing of screen by mis-typing Ctrl-s while terminal
stty stop ''
stty start ''
stty -ixon
stty -ixoff

# Personal directory navigation
alias ticks='cd ~/tickets; ls'
alias html='cd ~/tickets/html; ls'
alias ldp='cd app/code/local/LDP'
alias fldp='cd app/design/frontend/ldp'

# tmux shortcuts
alias tmux='tmux -2'
alias tk='tmux kill-session -t'
alias tl='tmux ls'
alias ta='tmux attach'

# color for output
red='\033[0;31m'
green='\033[0;32m'
blue='\033[0;34m'
purple='\033[0;35m'
orange='\033[0;33m'
NC='\033[0m' # No Color
DEFAULT='\033[39m' # Default


# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Source command line prettiness
if [ -f "$HOME/.bash_ps1" ]; then
    . "$HOME/.bash_ps1"
fi

# change bash colors (di = dir; ex = executable; ln = symlinks)
LS_COLORS=$LS_COLORS:'di=0;35;1:ex=92:ln=96;1' ; export LS_COLORS
