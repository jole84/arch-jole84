#!/bin/fish

# pacman
    # -e 's/#VerbosePkgLists/VerbosePkgLists/' \
sudo sed \
    -e 's/#Color/Color/' \
    -e 's/ParallelDownloads = 5/ParallelDownloads = 10/' \
    -i /etc/pacman.conf


# fish settings
set -U fish_greeting
set -U fish_prompt_pwd_dir_length 0

# aur git pull
# find ~/aur -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;

# sudo pacman -S --needed base-devel git
# git clone https://aur.archlinux.org/yay-bin.git
# git clone https://aur.archlinux.org/google-chrome.git
# makepkg -si

# other stuff
# sudo pacman -S glibc glibc-locales
