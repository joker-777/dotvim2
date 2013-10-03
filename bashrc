#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto' # linux
# alias ls='ls -G' # mac

# PS1='[\u@\h \W]\$ '
PS1="\[\033[1;44m\][\u@\h \W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\[\033[1;30;44m\]{\1}\[\033[1;37;44m\]/')]\[\033[0m\]\$ " # with git branch and different color 

complete -cf sudo

export EDITOR=vim
export BUNDLER_EDITOR=$EDITOR

# to make ruby faster
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_HEAP_FREE_MIN=500000

export HISTFILESIZE=2000

# To enable shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
