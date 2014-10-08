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

export EDITOR="vim"
export PATH="$HOME/bin:$HOME/.cabal/bin:$HOME/scripts:$PATH"

# 
alias sudo="sudo "
alias vi="vim"
alias ls="ls --color=always"
alias up="cd .."
alias less="less -R"
alias tmux="tmux -2"

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
export hlinux04="alex.bates@hlinux03.olivetree-solutions.com"
