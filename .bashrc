# .bashrc

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

export PS1='[\u@\h:\w] \$ '

export EDITOR="vim"
export PATH="$HOME/bin:$HOME/.cabal/bin:$HOME/scripts:$PATH"

# 
alias sudo="sudo "
alias vi="vim"
alias ls="ls --color=always"
alias up="cd .."
alias less="less -R"
alias tmux="tmux -2"
alias gitpp="git push && git push --tags"

GPG_TTY=$(tty)
export GPG_TTY

export GIT="git@github.com:prophet-on-that"

# Otas specific
export linux01="alex.bates@linux01.olivetree-solutions.com"
export hlinux01="alex.bates@hlinux01.olivetree-solutions.com"
export hlinux02="alex.bates@hlinux02.otastech.com"
export hlinux03="alex.bates@hlinux03.olivetree-solutions.com"
export yackage="http://hlinux03.olivetree-solutions.com:4777/"
