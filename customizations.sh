#!/bin/bash

# pacman
sudo sed \
    -e 's/#Color/Color/' \
    -e 's/ParallelDownloads = 5/ParallelDownloads = 10/' \
    -i /etc/pacman.conf

# fish alias
alias pacin='sudo pacman -S' -s # install package
alias pacrm='sudo pacman -Rs' -s # remove package
alias pacup='sudo pacman -Syu' -s # update
alias paccup='sudo pacman -Sy >/dev/null && pacman -Qu' -s # check for updates
alias pacss='pacman -Ss' -s # search
alias pacinfo='pacman -Qi' -s # show package info
alias pacls='pacman -Qe' -s # list installed packages
alias paclso='pacman -Qdt' -s # list explicitly installed uneeded packages
alias paclsa='pacman -Qem' -s # list explicitly installed packages not in sync database
alias pacarm='sudo pacman -Qdtq | sudo pacman -Rsu -' -s # autoremove unneeded


# other stuff

# sudo pacman -S glibc glibc-locales

# sudo pacman -S --needed base-devel git

# git clone https://aur.archlinux.org/yay.git
# git clone https://aur.archlinux.org/google-chrome.git

# makepkg -si