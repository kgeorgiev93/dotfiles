#!/bin/bash

# Install zsh
sudo apt install -y zsh

# Install oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell
chsh -s /bin/zsh

# Install powerlevel9k
sudo apt install -y zsh-theme-powerlevel9k

# Install fonts-powerline
sudo apt install -y fonts-powerline

# Install zsh-syntax-highlighting
sudo apt install -y zsh-syntax-highlighting

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Set up zshrc
cp zshrc ~/.zshrc
