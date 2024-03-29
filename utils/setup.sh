# utils
sudo apt install -y curl htop tree python3-pip

# c++
sudo apt install -y gcc gcc-7 g++ g++-7
sudo apt install -y make cmake
sudo apt install -y clangd clang-format clang-tidy

# rust
curl https://sh.rustup.rs -sSf | sh
sudo wget https://github.com/rust-analyzer/rust-analyzer/releases/download/2020-04-20/rust-analyzer-linux -O /usr/local/bin/rust-analyzer-linux
sudo chmod +x /usr/local/bin/rust-analyzer-linux

# TODO: not in the path yet
rustup component add rust-src

# python
pip3 install gitup
pip3 install bpytop

# ripgrep
sudo apt install -y ripgrep

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
