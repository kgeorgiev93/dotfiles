# Install pre-requesities
curl -sL install-node.now.sh | sudo bash

# Install vim
sudo apt install -y vim
sudo apt install -y vim-gtk

# Setup vimrc
cp vimrc ~/.vimrc

# Install vim papercolor scheme first
git clone https://github.com/NLKNguyen/papercolor-theme ~/.vim/bundle/papercolor-theme

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall

# coc setup
vim -c ':call coc#util#install()'
cp coc-settings.json ~/.vim/

# coc extensions
vim -c 'CocInstall coc-python coc-rust-analyzer coc-clangd coc-cmake coc-java coc-json coc-markdownlint coc-snippets \
    coc-tag coc-omni coc-syntax'

# Set up fugitive
cd ~/.vim/bundle
vim -u NONE -c "helptags vim-fugitive/doc" -c q

# Set up obsession
cd ~/.vim/bundle
vim -u NONE -c "helptags vim-obsession/doc" -c q

# Set up ctags
cd ~/workspace
ctags -R .
