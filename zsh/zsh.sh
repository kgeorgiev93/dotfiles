# Install zsh
sudo apt install -y zsh

# Install oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Change default shell
chsh -s /bin/zsh

# Install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install fonts
sudo apt install -y fonts-powerline

# Install zsh-syntax-highlighting
sudo apt install -y zsh-syntax-highlighting

# Set up zshrc
cp zshrc ~/.zshrc
