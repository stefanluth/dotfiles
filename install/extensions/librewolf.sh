#!/bin/bash

if ! command -v librewolf &>/dev/null; then
    echo "librewolf could not be found"
    echo "skipping librewolf extensions installation"
    exit
fi

echo "Installing LibreWolf extensions..."
mkdir $HOME/.librewolf
cd $HOME/.librewolf

curl https://addons.mozilla.org/firefox/downloads/file/4424459/reddit_enhancement_suite-5.24.8.xpi -o reddit_enhancement_suite.xpi
curl https://addons.mozilla.org/firefox/downloads/file/4440363/bitwarden_password_manager-2025.2.0.xpi -o bitwarden_password_manager.xpi
curl https://addons.mozilla.org/firefox/downloads/file/4412673/ublock_origin-1.62.0.xpi -o ublock_origin.xpi
curl https://addons.mozilla.org/firefox/downloads/file/4439735/darkreader-4.9.103.xpi -o darkreader.xpi

librewolf \
    bitwarden_password_manager.xpi \
    darkreader.xpi \
    reddit_enhancement_suite.xpi \
    ublock_origin.xpi
