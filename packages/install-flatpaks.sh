#!/bin/bash

# Add Flathub repository if not already added
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install packages
flatpak install flathub com.jeffser.Alpaca -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub tv.plex.PlexDesktop -y
