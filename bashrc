#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# https://wiki.archlinux.org/index.php/SSH_keys#Installation
eval `keychain -q --eval $HOME/.ssh/id_rsa`

alias ls='ls --color=auto' # linux
# alias ls='ls -G' # mac
alias dc='docker-compose $@'

source '/usr/share/git/completion/git-prompt.sh'
export GIT_PS1_SHOWDIRTYSTATE=true
# export GIT_PS1_SHOWUNTRACKEDFILES=true # commented it out because it slowed everything down
# PS1='[\u@\h \W]\$ '
# PS1="\[\033[1;44m\][\u@\h \W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\[\033[1;30;44m\]{\1}\[\033[1;37;44m\]/')]\[\033[0m\]\$ " # with git branch and different color 
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[0;33m\]$(__git_ps1 "(%s)")\$ \[\033[00m\]'
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[0;33m\]$(__git_ps1 "(%s)")\$ \[\033[00m\]'
export PS1

complete -cf sudo

export EDITOR='vim'
export BUNDLER_EDITOR=$EDITOR

# to make ruby faster
# export RUBY_GC_HEAP_INIT_SLOTS=1000000
# export RUBY_HEAP_SLOTS_INCREMENT=1000000
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
# export RUBY_GC_MALLOC_LIMIT=100000000
# export RUBY_HEAP_FREE_MIN=500000

# export HISTFILESIZE=2000

# To enable shims and autocompletion
# export PATH="~/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

# change console language to english
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8:en'

# always calls binary of the current node_modules location
alias npm-exec='PATH=$(npm bin):$PATH'
# for docker-compose in Kenhub
export HOSTNAME=localhost
export WEBPACK_DEV_SERVER_PORT=3035

# android emulator
export PATH="~/Android/Sdk/emulator/emulator:$PATH"

# needed for expo
export ANDROID_SDK=/home/johannes/Android/Sdk

# https://wiki.archlinux.org/index.php/ruby#Setup
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"
