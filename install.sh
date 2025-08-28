#!/bin/bash

# update system
sudo apt update && sudo apt upgrade -y

# install gcc and developer tools
sudo apt install build-essential -y 

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

# add brew to PATH
# echo >> ~/.bashrc
# echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# install bob
# sudo brew install bob

# add bob to PATH
# echo 'export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"' >> ~/.bashrc
