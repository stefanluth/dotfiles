#!/bin/bash

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

CASKS=(
    alacritty
    discord
    docker
    firefox
    gimp
    protonvpn
    spotify
    telegram
    transmission
    visual-studio-code
    vlc
    wireshark
)

FORMULAE=(
    ffmpeg
    fnm
    fzf
    gcc
    gh
    git
    go
    htop
    make
    mkcert
    nss
    nvim
    openssl@3
    openvpn
    python@3.11
    sqlite
    thefuck
    tmux
    transmission-cli
    wget
    zsh
)

brew update
brew upgrade

echo "Installing casks..."
brew install --cask ${CASKS[@]} --no-quarantine

echo "Installing formulae..."
brew install ${FORMULAE[@]}

echo "Installing rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "Getting tpm..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
