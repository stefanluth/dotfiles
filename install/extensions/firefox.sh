#!/bin/bash

if ! command -v firefox &>/dev/null; then
    echo "firefox could not be found"
    echo "skipping firefox extensions installation"
    exit
fi

echo "Installing firefox extensions..."
mkdir $HOME/.firefox
cd $HOME/.firefox

curl https://addons.mozilla.org/firefox/downloads/file/4424459/reddit_enhancement_suite-5.24.8.xpi -o reddit_enhancement_suite.xpi
curl https://addons.mozilla.org/firefox/downloads/file/4552124/bitwarden_password_manager-2025.7.1.xpi -o bitwarden_password_manager.xpi
curl https://addons.mozilla.org/firefox/downloads/file/4531307/ublock_origin-1.65.0.xpi -o ublock_origin.xpi
curl https://addons.mozilla.org/firefox/downloads/file/4535824/darkreader-4.9.110.xpi -o darkreader.xpi

firefox \
    bitwarden_password_manager.xpi \
    darkreader.xpi \
    reddit_enhancement_suite.xpi \
    ublock_origin.xpi
