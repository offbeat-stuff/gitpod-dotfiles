#!/bin/sh
apt-get install -y fish git neovim
cat fish_shell.sh >> ~/.bashrc
~/.sdkman/bin/sdkman-init.sh && sdk update && sdk install java 17.0.2-zulu && sdk default java 17.0.2-zulu && sdk install scala
curl -fL https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz | gzip -d > cs
chmod +x cs
./cs setup -y
./install.fish
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && cp -R ./custom ~/.config/nvim/lua
