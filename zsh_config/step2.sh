#!/bin/bash

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

sed -i "s/plugins=(git)/plugins=(\\ngit\\nsudo\\nzsh-syntax-highlighting\\nzsh-autosuggestions\\n)/g" ~/.zshrc
echo "export PATH=$PATH:~/.local/bin" >> ~/.zshrc
source ~/.zshrc
