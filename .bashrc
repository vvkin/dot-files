#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# Line preferences
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1='\[\e[0;34m\]\W \[\e[92m\]$(parse_git_branch)\[\e[0m\]\$ '
export TERM=xterm-256color

if [[ $PIPENV_PS1 ]]; then
    export PS1="$PIPENV_PS1"
fi
