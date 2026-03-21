#!/bin/fish

# curl https://raw.githubusercontent.com/jole84/arch-jole84/refs/heads/main/customizations.sh | fish

# pacman
    # -e 's/#VerbosePkgLists/VerbosePkgLists/' \
sudo sed \
    -e 's/#Color/Color/' \
    -e 's/ParallelDownloads = 5/ParallelDownloads = 10/' \
    -i /etc/pacman.conf

# fish alias
alias pacinstall='sudo pacman -S' -s # install package
alias pacremove='sudo pacman -Rns' -s # remove package
alias pacupdate='sudo pacman -Syu && flatpak update' -s
# alias pacupdate='sudo pacman -Syu && flatpak update && find ~/aur -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;' -s # update
alias paccheckupdate='sudo pacman -Sy >/dev/null && pacman -Qu' -s # check for updates
alias pacsearch='pacman -Ss' -s # search
alias pacinfo='pacman -Si' -s # show package info
alias paclistinstalled='pacman -Qe' -s # list explicitly installed packages
alias paclistorphans='pacman -Qdt' -s # list explicitly installed uneeded packages
alias paclistaliens='pacman -Qem' -s # list explicitly installed packages not in sync database
alias pacautoremove='sudo pacman -Qdtq | sudo pacman -Rsu -' -s # autoremove unneeded

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
