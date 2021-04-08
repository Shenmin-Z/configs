export ZSH="/home/buyabs.corp/sz9h/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting vi-mode)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

bindkey "^R" history-incremental-search-backward

alias n="nvim"
alias r="git pull --rebase"
alias p="git push"
alias gs="git status"
alias up="git add . && git commit -m update"

alias e="nvim ~/.zshrc"
alias s="source ~/.zshrc"
