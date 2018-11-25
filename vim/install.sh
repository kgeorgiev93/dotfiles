# Install pre-requesities
sudo apt install -y gcc
sudo apt install -y make
sudo apt install -y ruby-dev

# Install vim
sudo apt install -y vim

# Install gvim
CURRENT_DESKTOP="${XDG_CURRENT_DESKTOP}"
#if [ "$CURRENT_DESKTOP" = "KDE" ]; then
   sudo apt install -y vim-gtk
#else
   #sudo apt install -y vim-gnome
#fi

# Setup vimrc
cp vimrc ~/.vimrc

# Install papercolor shceme first
git clone https://github.com/NLKNguyen/papercolor-theme ~/.vim/bundle/papercolor-theme

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall

# Set up command-t
cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t
ruby extconf.rb
make

# Set up fugitive
cd ~/.vim/bundle
vim -u NONE -c "helptags vim-fugitive/doc" -c q

# Set up obsession
cd ~/.vim/bundle
vim -u NONE -c "helptags vim-obsession/doc" -c q
