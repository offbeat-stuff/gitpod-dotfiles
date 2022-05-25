#!/bin/sh
./install.fish
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && cp -R ./custom ~/.config/nvim/lua
