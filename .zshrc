# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export EDITOR="emacs"
export PATH="$HOME/bin:$HOME/.cabal/bin:$HOME/scripts:$PATH"

# 
alias sudo="sudo "
alias vi="vim"
alias ls="ls --color=always"
alias up="cd .."
alias less="less -R"
alias tmux="tmux -2"
alias emacs="emacs -nw"

# Prompt configuration
autoload -U promptinit
promptinit
prompt redhat 

GPG_TTY=$(tty)
export GPG_TTY

export GIT="git@github.com:prophet-on-that"

# Otas specific
export linux01="alex.bates@linux01.olivetree-solutions.com"
export hlinux01="alex.bates@hlinux01.olivetree-solutions.com"
export hlinux02="alex.bates@hlinux02.otastech.com"
export hlinux03="alex.bates@hlinux03.olivetree-solutions.com"
export hlinux05="alex.bates@hlinux05.olivetree-solutions.com"
export yackage="http://hlinux03.olivetree-solutions.com:4777/"

# export apiKey="556DA8B3A38CDEFA8F84E5241F65C" -- pre 1.1.3
# export newKey="555A6B624D364D7A7A447846746661766D4664367262722B32417444583579716C36456B464E4B45682F453D" -- otas dev copy
export apiKey="48346B3052303972334A61754158426242616569792F592F674879476B444A33576F4667367A4A542B41553D"
export newKey="85B6FFC791E74A8B24FAFC262FE1E"

export TIME="Real: %E\tUser mode: %U\tKernel mode: %S"
alias time="/usr/bin/time"
