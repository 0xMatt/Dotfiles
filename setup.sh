#!/bin/sh

## Default dirs
mkdir ~/Downloads ~/Documents ~/Games ~/Code ~/Media
mkdir ~/Media/Screenshots ~/Media/Wallpapers ~/Media/Music ~/Media/Movies ~/Media/Pictures ~/Media/Videos ~/Media/Screencasts

cd ~/.dotfiles
stow compton
stow i3
stow polybar
stow zsh
stow ranger
stow dunst
stow imgur-screenshot
stow rofi
cd ~

# Imgur Screenshot
git clone https://github.com/jomo/imgur-screenshot.git
chmod +x imgur-screenshot/imgur-screenshot
sudo mv imgur-screenshot/imgur-screenshot /usr/bin/imgur-screenshot
rm -rf imgur-screenshot

# WM
#sudo dnf -y install i3-gaps i3lock polybar rofi --allowerasing

## i3lock
git clone https://github.com/meskarune/i3lock-fancy.git
cd i3lock-fancy
sudo make install
cd ~
rm -rf i3lock-fancy

## Pipes.sh
git clone git@github.com:pipeseroni/pipes.sh.git
cd pipes.sh
sudo make install
cd ~/.dotfiles

# Install Antigen
curl -L git.io/antigen > ~/.antigen.zsh

# Set default shell to zsh
chsh -s $(which zsh)

