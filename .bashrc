# .bashrc

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

export PS1='[\u@\h:\w] \$ '

export EDITOR="emacs -nw"
export PATH="$HOME/bin:$HOME/.cabal/bin:$HOME/scripts:$PATH"

# 
alias sudo="sudo "
alias vi="vim"
alias ls="ls --color=always"
alias up="cd .."
alias less="less -R"
alias tmux="tmux -2"
alias emacs="emacs -nw"
alias gitpp="git push && git push --tags"

export TIME="Real: %E\tUser mode: %U\tKernel mode: %S"
alias time="/usr/bin/time"

GPG_TTY=$(tty)
export GPG_TTY
export GIT="git@github.com:prophet-on-that"

if [[ -f "$HOME/.bashrc_private" ]]; then
  . "$HOME/.bashrc_private"
fi

if [[ -f "$HOME/.bashrc_local" ]]; then
  . "$HOME/.bashrc_local"
fi
