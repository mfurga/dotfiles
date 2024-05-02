#!/bin/bash

set -eux

wget -qO- https://raw.githubusercontent.com/mfurga/configuration/master/.bashrc >~/.bashrc
wget -qO- https://raw.githubusercontent.com/mfurga/configuration/master/.vimrc >~/.vimrc
wget -qO- https://raw.githubusercontent.com/mfurga/configuration/master/.tmux.conf >~/.tmux.conf

