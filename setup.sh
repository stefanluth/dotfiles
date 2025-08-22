#!/bin/bash

mkdir $HOME/code
git clone https://github.com/stefanluth/dotfiles $HOME/code/dotfiles

echo "Installing packages..."
bash $HOME/code/dotfiles/install/packages.sh

echo "Installing fonts..."
bash $HOME/code/dotfiles/install/fonts.sh

echo "Installing Steam..."
bash $HOME/code/dotfiles/install/steam.sh

echo "Installing Firefox extensions..."
bash $HOME/code/dotfiles/install/extensions/firefox.sh

echo "Installing VSCode extensions..."
bash $HOME/code/dotfiles/install/extensions/vscode.sh

echo "Installing zsh extensions..."
bash $HOME/code/dotfiles/install/extensions/zsh.sh

bash $HOME/code/dotfiles/scripts/git.sh

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

mkdir -p $HOME/.config/Code/User/

cp -a $HOME/code/dotfiles/dotfiles/.config $HOME/.config
cp -a $HOME/code/dotfiles/dotfiles/.tmux.conf $HOME/.tmux.conf
cp -a $HOME/code/dotfiles/dotfiles/.zshrc $HOME/.zshrc
cp -a $HOME/code/dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
