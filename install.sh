#!/bin/bash

# symlink .bashrc and .zshrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# use new .bashrc
source ~/.bashrc

# update system
sudo apt update && sudo apt upgrade -y

# install gcc and developer tools
sudo apt install build-essential -y 

# install okular
sudo apt install okular -y

# install zsh
sudo apt install zsh -y

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# install brew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add brew to path
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" >> ~/.bashrc

# install bob
sudo brew install bob

# add bob to PATH
# echo 'export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"' >> ~/.bashrc

# install neovim nightly
bob install nightly
bob use nightly

# symlink init.lua for neovim
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua

# install fzf
# brew install fzf

# install fd
# brew install fd

# set git config
git config --global user.email "farooqameencs@gmail.com"
git config --global user.name "farooqameen"
git config --global core.editor "nvim"
git config --global credential.helper "/mnt/c/Users/farooq/AppData/Local/Programs/Git/mingw64/bin/git-credential/manager.exe"
