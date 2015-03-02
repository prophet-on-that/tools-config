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

# Prompt configuration
autoload -U promptinit
promptinit
prompt redhat 

GPG_TTY=$(tty)
export GPG_TTY
export GIT="git@github.com:prophet-on-that"

if [[ -f "$HOME/.zshrc_private" ]]; then
  . "$HOME/.zshrc_private"
fi

if [[ -f "$HOME/.zshrc_local" ]]; then
  . "$HOME/.zshrc_local"
fi
