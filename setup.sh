#!/bin/sh

# Make sure dotfiles are dropped in to avoid issues wit stow
sudo dnf install -y stow

cd /home/$USER/.dotfiles
stow compton
stow i3
stow polybar
stow zsh
stow spacevim
stow ranger
cd ~

# RPMFusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Chrome
sudo dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

# Nvidia
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
sudo dnf -y install nvidia-settings kernel-devel dkms-nvidia nvidia-driver-libs.i686 

# Steam
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo

# Default Packages ;)
sudo dnf -y install @base-x htop neofetch ncmpcpp transmission-remote-cli transmission-daemon git wget \
  weechat compton vim neovim feh adobe-source-code-pro-fonts fontawesome-fonts ranger qutebrowser gnome-terminal \
  zsh util-linux-user stow whois traceroute steam xautolock

# Copr Packages
sudo dnf install -y https://copr-be.cloud.fedoraproject.org/results/valdikss/imgur-screenshot/fedora-rawhide-ppc64le/00751928-imgur-screenshot/imgur-screenshot-1.7.4-1.fc29.noarch.rpm \
  https://copr-be.cloud.fedoraproject.org/results/livegrenier/i3-desktop/fedora-28-x86_64/00791962-polybar/polybar-3.2.1-1.fc28.x86_64.rpm \
  https://copr-be.cloud.fedoraproject.org/results/livegrenier/i3-desktop/fedora-28-x86_64/00765535-i3-gaps/i3-gaps-4.15.0.1-1.fc28.x86_64.rpm \
  https://copr-be.cloud.fedoraproject.org/results/livegrenier/i3-desktop/fedora-28-x86_64/00765537-rofi/rofi-1.5.1-1.fc28.x86_64.rpm

# Install Antigen
curl -L git.io/antigen > .antigen.zsh

# Set default shell to zsh
chsh -s $(which zsh)

# SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

