#!/bin/bash

PACKAGES=(
    bzip2
    bzip2-devel
    code
    cronie
    ffmpeg
    firefox
    fzf
    gcc
    gdbm-devel
    gh
    gimp
    git
    htop
    kernel-devel
    lame
    lame-libs
    libffi-devel
    libuuid-devel
    make
    openssl-devel
    openvpn
    pip
    python
    readline-devel
    sqlite
    sqlite-devel
    telegram-desktop
    thefuck
    tk-devel
    tmux
    util-linux-user
    wl-clipboard
    xclip
    xz-devel
    zlib-devel
    zsh
)

echo "Adding RPM Fusion repos..."
sudo dnf install \
    https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
    -y

echo "Updating packages..."
sudo dnf update -y
sudo dnf upgrade -y
echo "Installing packages..."
sudo dnf install ${PACKAGES[@]} --allowerasing --skip-broken -y

echo "Adding user to pkg-build group..."
sudo usermod -a -G pkg-build $USER

echo "Getting tpm..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
