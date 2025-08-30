#!/bin/bash

# update system
sudo apt update && sudo apt upgrade -y

# install gcc and developer tools
sudo apt install build-essential -y 

# todo: separate installations according to package manager
# this is to ensure that nothing breaks

# install zsh and ohmyzsh

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sudo apt install zsh -y
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

    # change shell
    chsh -s $(which zsh)    
else
    echo "zsh already installed"
fi

# symlink .bashrc and .zshrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# install brew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install okular
sudo apt install okular -y

# add brew to PATH
# echo >> ~/.bashrc
# echo >> ~/.zshrc
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install bob
sudo brew install bob

# add bob to PATH
# echo 'export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"' >> ~/.bashrc

# install fzf
# brew install fzf

# install ripgrep
brew install ripgrep

# install fd
# brew install fd

# symlink init.lua for neovim
ln -sf ~/dotfiles/nvim/init.lua ~/.config/nvim/init.lua
