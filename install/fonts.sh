#!/bin/bash

curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
sudo tar -xf JetBrainsMono.tar.xz -C $Home/Library/Fonts
rm JetBrainsMono.tar.xz
