# Install zsh
sudo apt install -y zsh

# Install oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell
chsh -s /bin/zsh

# Install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install fonts-powerline
git clone https://github.com/powerline/fonts.git ~/fonts-powerline
cd ~/fonts-powerline
./install.sh
rm -rf ~/fonts-powerline

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Set up zshrc
cp zshrc ~/.zshrc
