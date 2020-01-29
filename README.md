# dotfiles

After cloning repo, run the following at the command line:

```
## Install oh my zsh: https://ohmyz.sh/
## Install powerline fonts: https://github.com/powerline/fonts
ln -s $HOME/dotfiles/.zshrc ~/
ln -s $HOME/dotfiles/.zprofile ~/
ln -s $HOME/dotfiles/.gitignore_global ~/

## Install neovim: https://github.com/neovim/neovim/wiki/Installing-Neovim
## Install vim plug from: https://github.com/junegunn/vim-plug
## Run :PlugInstall in vim to install plugins
ln -s $HOME/dotfiles/.config/nvim ~/.config
ln -s $HOME/dotfiles/.config/i3 ~/.config
ln -s $HOME/dotfiles/.config/i3status ~/.config

ln -s $HOME/dotfiles/.Xresources ~/
ln -s $HOME/dotfiles/.xinitrc ~/
```
