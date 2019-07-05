# Install tmux
sudo apt install -y tmux

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install xsel for tmux-yank
sudo apt install -y xsel

# Set up tmux.conf
cp tmux.conf ~/.tmux.conf

# Install plugins
~/.tmux/plugins/tpm/bin/install_plugins
