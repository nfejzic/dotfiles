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
    git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
    ~/.emacs.d/bin/domm install

        # copy custom doom emacs config
        rm ~/.doom.d/*
        cp ~/dotfiles/emacs_config/.doom.d/* ~/.doom.d/

        # perform doom sync
        ~/.emacs.d/bin/doom sync


# install nvim
sudo dnf install neovim -y

# install Adobe source Code Pro fonts
sudo dnf install adobe-source-code-pro-fonts -y # should be already there on fedora!

# install jetbrains Mono font
sudo dnf install jetrains-mono-fonts-all -y

# install xclip
sudo dnf install xclip -y

# JetBrains ToolBox
wget -cO jetbrains-toolbox.tar.gz "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
tar -xzf jetbrains-toolbox.tar.gz
DIR=$(find . -maxdepth 1 -type d -name jetbrains-toolbox-\* -print | head -n1)
cd $DIR
./jetbrains-toolbox
cd ..
rm -r $DIR
rm jetbrains-toolbox.tar.gz

# Install rustup - Rust Toolchain and installer
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install latest openJDK
sudo dnf install java-latest-openjdk -y

# Install Podman-Docker -- open source docker alternative from red hat / fedora
sudo dnf install podman-docker -y

# Add flathub as flatpak repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install spotify using flatpak
flatpak install flathub spotify -y

# install dropbox
flatpak install flathub drobpox -y

# install rclone and configure (for onedrive)
sudo dnf install rclone -y

# or install onedrive client on fedora
sudo dnf install onedrive -y
