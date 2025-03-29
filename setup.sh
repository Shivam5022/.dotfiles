#!/bin/bash
ln -sf ~/.dotfiles/nvim ~/.config/
echo "Neovim config linked successfully"

ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf
tmux source ~/.tmux.conf
echo "Tmux config linked successfully"

ln -sf ~/.dotfiles/zshrc ~/.zshrc
source ~/.zshrc
echo "zshrc config linked successfully"

ln -sf ~/.dotfiles/wezterm.lua ~/.wezterm.lua
echo "Wezterm config linked successfully"

ln -sf ~/.dotfiles/helix/config.toml ~/.config/helix/config.toml
echo "Helix config linked successfully"
