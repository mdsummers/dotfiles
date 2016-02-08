#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export EDITOR=vim
export PATH=~/bin:"$PATH"

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

PS1='`if [ $? = 0 ]; then echo "\[\e[32m\]✔ "; else echo "\[\e[31m\]✘ "; fi`\[\e[0;34m\]\A \[\033[0;35m\]\u@\h\[\033[00m\]:\[\033[0;36m\]\W\[\033[0;37m\]\$\[\e[0m\] '
