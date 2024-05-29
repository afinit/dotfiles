eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_rsa_github

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="/usr/local/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

