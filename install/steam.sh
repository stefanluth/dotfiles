#!/bin/bash

curl https://cdn.fastly.steamstatic.com/client/installer/steam.dmg -o $HOME/Downloads/steam.dmg
hdiutil attach $HOME/Downloads/steam.dmg
cp -a /Volumes/Steam/Steam.app /Applications
hdiutil detach /Volumes/Steam
rm $HOME/Downloads/steam.dmg
