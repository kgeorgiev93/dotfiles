# utils
sudo apt install -y curl htop tree

# c++
sudo apt install -y gcc gcc-7 g++ g++-7
sudo apt install -y make cmake
sudo apt install -y clangd clang-format clang-tidy

# rust
curl https://sh.rustup.rs -sSf | sh
sudo wget https://github.com/rust-analyzer/rust-analyzer/releases/download/2020-04-20/rust-analyzer-linux -O /usr/local/bin/rust-analyzer-linux
sudo chmod +x /usr/local/bin/rust-analyzer-linux
rustup component add rust-src

# python
git clone git://github.com/earwig/git-repo-updater.git
cd git-repo-updater
sudo python3 setup.py install
cd ..; rm -rf git-repo-updater

# ctags
sudo apt install -y exuberant-ctags

# ripgrep
sudo apt install -y ripgrep

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
