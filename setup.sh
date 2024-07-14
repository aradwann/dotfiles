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

# Gitconfig
if [ -f ~/.gitconfig ]; then
  rm ~/.gitconfig
fi
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

# Setup commit signing with SSH key
if [ ! -d ~/.config/git ]; then
  mkdir -p ~/.config/git
fi

if [ -f ~/.ssh/id_ed25519 ]; then
  chmod 600 ~/.ssh/id_ed25519
  # Modify this line to meet your needs.
  # Declaring the `git` namespace helps prevent cross-protocol attacks.
  echo "$(git config --get user.email) namespaces=\"git\" $(cat ~/.ssh/id_ed25519.pub)" >> ~/.ssh/allowed_signers
  chmod 644 ~/.config/git/allowed_signers
  git config --global gpg.format ssh
  git config --global user.signingkey ~/.ssh/id_ed25519.pub
  git config --global gpg.ssh.allowedSignersFile ~/.config/git/allowed_signers
  ssh-add ~/.ssh/id_ed25519
fi

echo "Dotfiles have been set up!"
