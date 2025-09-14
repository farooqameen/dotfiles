#!/bin/bash

# symlink .bashrc and .zshrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# use new .bashrc
source ~/.bashrc

# update system
sudo apt update && sudo apt upgrade -y

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# install brew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

#install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install neovim nightly
bob install nightly
bob use nightly

# symlink neovim config folder
rm -rf ~/.config/nvim
ln -sf ~/dotfiles/nvim/ ~/.config/

# set git config
git config --global user.email "farooqameencs@gmail.com"
git config --global user.name "farooqameen"
git config --global core.editor "nvim"
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/bin/git-credential-manager.exe"
# git config --global credential.helper "/mnt/c/Users/FarooqAmeen/AppData/Local/Programs/Git/mingw64/bin/git-credential-manager.exe

