#!/bin/bash
curl -sLO https://raw.githubusercontent.com/Homebrew/install/master/uninstall.sh
chmod +x ./uninstall.sh
sudo ./uninstall.sh --force
sudo rm -rf /usr/local/Homebrew /usr/local/Caskroom /usr/local/bin/brew
