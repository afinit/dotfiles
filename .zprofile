eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_rsa_github

export PATH="$HOME/.cargo/bin:$PATH"
