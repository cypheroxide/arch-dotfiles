```

## Installation

To install these packages, you'll need:
1. Access to the AUR (using an AUR helper like `paru` or `yay`)
2. The Chaotic AUR repository configured

### Setting up Chaotic AUR
```bash
# Add Chaotic-AUR key
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB

# Add Chaotic-AUR repository
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

# Add to /etc/pacman.conf
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
```

### Installation Script Usage
Run the installation script:
```bash
./install-aur-packages.sh
```
