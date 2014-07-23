#!/bin/bash

# Copy powerline font
if [ ! -d "~/.fonts" ]; then
  mkdir ~/.fonts
fi

if [ ! -e "~/.fonts/Droid\ Sans\ Mono\ for\ Powerline.otf" ]; then
   wget -P ~/.fonts/ https://github.com/Lokaltog/powerline-fonts/raw/master/DroidSansMono/Droid%20Sans%20Mono%20for%20Powerline.otf
   fc-cache -vf ~/.fonts
fi

ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/Xdefaults ~/.Xdefaults
ln -s ~/dotfiles/Xmodmap ~/.Xmodmap
ln -s ~/dotfiles/wmii ~/.wmii
ln -s ~/dotfiles/zsh_plugins ~/.zsh_plugins

git clone https://github.com/olivierverdier/zsh-git-prompt.git ~/.zsh
