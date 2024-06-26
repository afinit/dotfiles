# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="steeef"
# ZSH_THEME="xiong-chiamiov-plus"
ZSH_THEME="personal"
# ZSH_THEME="jonathan"
# ZSH_THEME="juanghurtado"
# ZSH_THEME="kolo"
HIST_STAMPS="dd.mm.yyyy"

plugins=(git vi-mode kube-ps1 kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

# bindkey '^[OA' history-beginning-search-backward
# bindkey '^[OB' history-beginning-search-forward

export VISUAL=nvim
export EDITOR=nvim
alias vim="nvim"
alias ll="ls -lah"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/local/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

export PATH="$HOME/.cargo/bin:$PATH"

if [ -d "$HOME/.rd/bin" ]; then
  export PATH="$HOME/.rd/bin:$PATH"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
