#!/bin/bash

set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true
test $? -eq 0 || exit 1 "you should have sudo privilege to run this script"

echo " "
echo installing the must-have pre-requisites
sudo apt-get update

while read -r p ; do sudo apt-get install -y $p ; done < <(cat << "EOF"
    curl
    wget
    zip unzip
    git
    htop
    tldr
    cmatrix
    bat
EOF
)

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

echo " "
echo installing the nice-to-have pre-requisites
echo you have 5 seconds to proceed ...
echo or
echo hit Ctrl+C to quit
echo -e "\n"
sleep 6

sudo add-apt-repository -y universe
sudo apt-get update

while read -r p ; do sudo apt-get install -y $p ; done < <(cat << "EOF"
    lf
    fzf
    trash-cli
    timeshift
    ncdu
    ubuntu-restricted-extras
    flatpak
EOF
)

echo " "
echo installing snap apps the nice-to-have pre-requisites
echo you have 5 seconds to proceed ...
echo or
echo hit Ctrl+C to quit
echo -e "\n"
sleep 6

sudo snap install postman
sudo snap install dbeaver-ce

echo " "
if ! [ -x "$(command -v nvm)" ]; then
    echo downloading and installing nvm...
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
else
    echo nvm is already installed
fi

git clone --recursive https://github.com/andresgongora/synth-shell.git
chmod +x synth-shell/setup.sh
cd synth-shell
./setup.sh

sudo apt-get upgrade

echo " "
echo installation completed.
sleep 6
