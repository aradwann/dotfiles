#!/bin/bash

# Create config directory if it doesn't exist
mkdir -p ~/.config

# Fish
ln -sfn ~/.dotfiles/fish ~/.config/fish

# Alacritty
ln -sfn ~/.dotfiles/alacritty ~/.config/alacritty

# Helix
ln -sfn ~/.dotfiles/helix ~/.config/helix

# Zellij
ln -sfn ~/.dotfiles/zellij ~/.config/zellij

