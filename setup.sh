#!/bin/sh

## Default dirs
mkdir ~/Downloads ~/Documents ~/Games ~/Code ~/Media
mkdir ~/Media/Screenshots ~/Media/Wallpapers ~/Media/Music ~/Media/Movies ~/Media/Pictures ~/Media/Videos ~/Media/Screencasts

# Make sure dotfiles are dropped in to avoid issues wit stow
sudo dnf install -y stow

cd ~/.dotfiles
stow compton
stow i3
stow polybar
stow zsh
stow neovim
stow spacevim
stow ranger
stow dunst
stow imgur-screenshot
stow rofi
stow xorg
cd ~

# RPMFusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Chrome
sudo dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

# Steam
#sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo

# Default Packages ;)
sudo dnf -y install @base-x htop glances cmatrix neofetch git wget ctags words kernel-devel \
  compton vim neovim feh adobe-source-code-pro-fonts fontawesome-fonts ranger gnome-terminal \
  zsh util-linux-user whois traceroute xautolock dunst NetworkManager-wifi byzanz polkit-desktop-policy polkit-gnome polkit pavucontrol system-config-printer cups

# Intel Wifi-6 AXC201 drivers
sudo dnf install -y iwl7260-firmware

# Imgur Screenshot
git clone https://github.com/jomo/imgur-screenshot.git
chmod +x imgur-screenshot/imgur-screenshot
sudo mv imgur-screenshot/imgur-screenshot /usr/bin/imgur-screenshot
rm -rf imgur-screenshot

# WM
sudo dnf -y install i3-gaps i3lock polybar rofi --allowerasing

## i3lock
git clone https://github.com/meskarune/i3lock-fancy.git
cd i3lock-fancy
sudo make install
cd ~
rm -rf i3lock-fancy

# Install Antigen
curl -L git.io/antigen > ~/.antigen.zsh

# Set default shell to zsh
chsh -s $(which zsh)

