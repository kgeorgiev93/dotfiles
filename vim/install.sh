# Install pre-requesities
sudo apt install -y gcc
sudo apt install -y make
sudo apt install -y ruby-dev

# Install vim
sudo apt install -y vim

# Install gvim
sudo apt install -y vim-gtk

# Install ctags
sudo apt install -y exuberant-ctags

# Install ripgrep
wget https://github.com/BurntSushi/ripgrep/releases/download/11.0.1/ripgrep_11.0.1_amd64.deb
sudo dpkg -i ripgrep_11.0.1_amd64.deb
rm ripgrep_11.0.1_amd64.deb

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Setup vimrc
cp vimrc ~/.vimrc

# Install papercolor shceme first
git clone https://github.com/NLKNguyen/papercolor-theme ~/.vim/bundle/papercolor-theme

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall

# Set up fugitive
cd ~/.vim/bundle
vim -u NONE -c "helptags vim-fugitive/doc" -c q

# Set up obsession
cd ~/.vim/bundle
vim -u NONE -c "helptags vim-obsession/doc" -c q

# Set up ctags
cd ~/workspace
ctags -R .
