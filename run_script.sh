#!/usr/bin/env bash

sudo apt-get install python3 python3-dev python3-pip
sudo apt-get install build-essential libpython3-dev m4 nodejs unzip uuid zip
sudo apt-get install libasound2-dev libcurl4-openssl-dev libdbus-1-dev libdbus-glib-1-dev libdrm-dev libgtk-3-dev libpulse-dev libx11-xcb-dev libxt-dev xvfb

python3 -m pip install --user mercurial
echo "export PATH=\"$(python3 -m site --user-base)/bin:$PATH\"" >> ~/.bashrc
hg version
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py -O
python3 bootstrap.py --vcs=git
cd mozilla-unified
./mach build
./mach run


