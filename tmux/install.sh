# Install tmux
sudo apt install -y tmux

# Install tmux plugin manager
sudo apt install -y tmux-plugin-manager

# Install xsel for tmux-yank
sudo apt-get install xsel

# Set up tmux.conf
cp tmux.conf ~/.tmux.conf

# Install plugins
~/.tmux/plugins/tpm/bin/install_plugins
