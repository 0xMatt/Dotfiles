#!/bin/sh

# RPMFusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Chrome
sudo dnf install -y https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

# Nvidia
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
sudo dnf -y install nvidia-settings kernel-devel dkms-nvidia nvidia-driver-libs.i686

# Steam
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo

sudo dnf -y install @base-x htop neofetch ncmpcpp transmission-remote-cli transmission-daemon git wget \
  weechat compton vim neovim feh adobe-source-code-pro-fonts fontawesome-fonts ranger qutebrowser gnome-terminal \
  zsh util-linux-user stow whois traceroute steam xautolock

# Stow
cd /home/$USER/.dotfiles
stow compton
stow i3
stow polybar
stow zsh
stow spacevim
stow ranger
cd ~

# Install Antigen
curl -L git.io/antigen > .antigen.zsh

# Set default shell to zsh
chsh -s $(which zsh)

# sudo dnf install -y lightdm slick-greeter
#sudo systemctl enable lightdm.service
#sudo systemctl set-default graphical.target

# Copr Repos
#sudo dnf copr enable livegrenier/i3-desktop
#sudo dnf -y install i3-gaps i3lock dmenu polybar

#sudo dnf copr enable valdikss/imgur-screenshot
#sudo dnf -y install imgur-screenshot

# SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

