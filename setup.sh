#!/bin/bash

# Alacritty
if [ -d ~/.config/alacritty ]; then
  rm -rf ~/.config/alacritty
fi
ln -sf ~/dotfiles/alacritty ~/.config/alacritty

# Zellij
if [ -d ~/.config/zellij ]; then
  rm -rf ~/.config/zellij
fi
ln -sf ~/dotfiles/zellij ~/.config/zellij

# Fish
if [ -d ~/.config/fish ]; then
  rm -rf ~/.config/fish
fi
ln -sf ~/dotfiles/fish ~/.config/fish

# Helix
if [ -d ~/.config/helix ]; then
  rm -rf ~/.config/helix
fi
ln -sf ~/dotfiles/helix ~/.config/helix

echo "Dotfiles have been set up!"
