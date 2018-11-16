#!/bin/sh

sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
sudo dnf -y install nvidia-settings kernel-devel dkms-nvidia nvidia-driver-libs.i686 

