#!/bin/fish

# pacman
sudo sed \
    -e 's/#Color/Color/' \
    -e 's/ParallelDownloads = 5/ParallelDownloads = 10/' \
    -i /etc/pacman.conf

# fish alias
alias pacinstall='sudo pacman -S' -s # install package
alias pacremove='sudo pacman -Rns' -s # remove package
alias pacupdate='sudo pacman -Syu' -s # update
alias paccheckupdate='sudo pacman -Sy >/dev/null && pacman -Qu && flatpak update' -s # check for updates
alias pacsearch='pacman -Ss' -s # search
alias pacinfo='pacman -Si' -s # show package info
alias paclistinstalled='pacman -Qe' -s # list explicitly installed packages
alias paclistorphans='pacman -Qdt' -s # list explicitly installed uneeded packages
alias paclistaliens='pacman -Qem' -s # list explicitly installed packages not in sync database
alias pacautoremove='sudo pacman -Qdtq | sudo pacman -Rsu -' -s # autoremove unneeded


# other stuff

# sudo pacman -S glibc glibc-locales

# sudo pacman -S --needed base-devel git

# git clone https://aur.archlinux.org/yay.git
# git clone https://aur.archlinux.org/google-chrome.git

# makepkg -si
