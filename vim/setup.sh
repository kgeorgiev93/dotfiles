# Install dependencies

# Install vim
sudo apt install -y vim
sudo apt install -y vim-gtk

# Setup vimrc
cp vimrc ~/.vimrc

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
