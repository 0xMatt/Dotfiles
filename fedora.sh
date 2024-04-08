#!/bin/sh


# RPMFusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Chrome
sudo dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

# Steam
#sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo

# Default Packages
sudo dnf -y install @base-x htop glances cmatrix neofetch \
  # Basics
  git ctags words kernel-devel\
  # Fonts
  adobe-source-code-pro-fonts fontawesome-fonts 
  # Terminal & Terminal apps
  gnome-terminal ranger zsh vim neovim \
  # Network & Bluetooth
  util-linux-user NetworkManager-wifi byzanz whois traceroute wget \
  # Drivers 
  # Intel Wifi-6 AXC201 drivers
  iwl7260-firmware
  # Utilities
  util-linux-user xautolock dunst polkit-desktop-policy polkit-gnome polkit pavucontrol system-config-printer cups scrot compton feh

# WM
sudo dnf -y install i3-gaps i3lock polybar rofi --allowerasing

