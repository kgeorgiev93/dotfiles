# Install vim
sudo apt install vim

# Install gvim
CURRENT_DESKTOP="${XDG_CURRENT_DESKTOP}"
if [ "$CURRENT_DESKTOP" = "KDE" ]; then
   sudo apt install vim-gtk
else
   sudo apt install vim-gnome
fi

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
git clone https://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q

# Set up obsession
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-obsession.git
vim -u NONE -c "helptags vim-obsession/doc" -c q
