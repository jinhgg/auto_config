#!/bin/bash

echo ">>> start auto install ohmyzsh <<<"

echo "199.232.68.133 raw.github.com" >> /etc/hosts
echo "199.232.68.133 raw.githubusercontent.com" >> /etc/hosts

apt update
apt install -y git zsh curl

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
