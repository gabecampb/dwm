#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\[\033[36m\]● \[\033[32m\]\W\[\033[37m\]]\$ '
PROMPT_COMMAND='export DIRS=$(dirs) && echo -ne "\033]0;$DIRS\007"'
