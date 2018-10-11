#!/bin/sh

# Make home directories
mkhomedir_helper $USER

# Fedy
sudo dnf install -y https://dl.folkswithhats.org/fedora/$(rpm -E %fedora)/RPMS/fedy-release.rpm
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y fedy

# Nvidia
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
sudo dnf -y install nvidia-settings kernel-devel dkms-nvidia vulkan.i686 nvidia-driver-libs.i686
sudo dnf -y install nvidia-driver-libs.i686

# Steam
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-steam.repo
sudo dnf -y install steam

sudo dnf -y install @base-x htop neofetch ncmpcpp transmission-remote-cli transmission-daemon git wget lightdm slick-greeter \
  weechat compton vim neovim feh adobe-source-code-pro-fonts fontawesome-fonts ranger qutebrowser gnome-terminal zsh util-linux-user

# Stow
cd /home/$USER/Dotfiles
stow compton
stow i3
stow polybar
stow zsh
cd ~

# Set default shell to zsh
chsh -s $(which zsh)

curl -L git.io/antigen > .antigen.zsh

sudo systemctl enable lightdm.service
sudo systemctl set-default graphical.target

# Copr Repos
sudo dnf copr enable livegrenier/i3-desktop
sudo dnf -y install i3-gaps i3lock dmenu polybar

sudo dnf copr enable valdikss/imgur-screenshot
sudo dnf -y install imgur-screenshot

# SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

