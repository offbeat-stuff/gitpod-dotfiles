#!/bin/sh
cat fish_shell.sh >> ~/.bashrc
curl -s "https://get.sdkman.io" | bash && source ~/.sdkman/bin/sdkman-init.sh && sdk update && sdk install java 17.0.2-zulu && sdk default java 17.0.2-zulu && sdk install scala
cp ./install-cs.sh ~/
./install.fish
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && cp -R ./custom ~/.config/nvim/lua
