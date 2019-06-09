# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
HIST_STAMPS="dd.mm.yyyy"

plugins=(git, vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

bindkey '^[OA' history-beginning-search-backward
bindkey '^[OB' history-beginning-search-forward

export VISUAL=nvim
export EDITOR=nvim
alias vim="nvim"
alias ll="ls -lah"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
