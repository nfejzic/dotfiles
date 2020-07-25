#!/usr/bin/bash

# install zsh
sudo dnf install zsh -y

# install linux util
sudo dnf install util-linux-user -y

# change shell
chsh -s $(which zsh)

# then log out and back in!

# install zimfw - Zsh IMproved FrameWork
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh

# restart terminal, then setup powerlevel10k prompt in zim
echo "zmodule romkatv/powerlevel10k" >> ~/.zimrc
zimfw install # to install powerlevel10kt

# install gnome-tweaks
sudo dnf install gnome-tweaks -y

# install papirus icons
sudo dnf install papirus-icon-theme -y

# enable google-chrome repository in fedora
sudo dnf install fedora-workstation-repositories -y
sudo dnf config-manager --set-enabled google-chrome

# install google chrome 
sudo dnf install google-chrome-stable -y

# install vs code on fedora
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code -y

# install emacs
sudo dnf install emacs -y

# configure emacs

    # install doom emacs


# install nvim
sudo dnf install neovim -y

# install Adobe source Code Pro fonts
sudo dnf install adobe-source-code-pro-fonts -y # should be already there on fedora!

