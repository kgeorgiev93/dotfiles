# Install zsh
sudo apt install zsh;

# Install oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh;

# Change default shell
chsh -s /bin/zsh;

# Install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k;

# Fonts

# Install zsh-syntax-highlighting
sudo apt install zsh-syntax-highlighting;

# Set up zshrc
cp .zshrc ~/.zshrc;
