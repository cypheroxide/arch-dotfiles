#!/bin/bash

# Get current date
DATE=$(date +"%Y-%m-%d")

# Create/update the AUR packages list
echo "# AUR Packages

## Currently Installed AUR Packages (Updated: $DATE)

### Native AUR Packages
\`\`\`" > packages/aur/aur-packages.md

# Add AUR packages
pacman -Qm | sort >> packages/aur/aur-packages.md

echo "\`\`\`

### Chaotic AUR Packages
\`\`\`" >> packages/aur/aur-packages.md

# Add Chaotic AUR packages
pacman -Sl chaotic-aur | grep -i installed | sort >> packages/aur/aur-packages.md

echo "\`\`\`

## Installation

To install these packages, you'll need:
1. Access to the AUR (using an AUR helper like \`paru\` or \`yay\`)
2. The Chaotic AUR repository configured

### Setting up Chaotic AUR
\`\`\`bash
# Add Chaotic-AUR key
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB

# Add Chaotic-AUR repository
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

# Add to /etc/pacman.conf
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
\`\`\`

### Installation Script Usage
Run the installation script:
\`\`\`bash
./install-aur-packages.sh
\`\`\`

## Updating Package List
To update this package list after installing new AUR packages:
\`\`\`bash
./update-aur-packages.sh
\`\`\`" >> packages/aur/aur-packages.md

# Also update the installation script
echo "#!/bin/bash

# Check if paru is installed
if ! command -v paru &> /dev/null; then
    echo \"Installing paru...\"
    sudo pacman -S --needed base-devel
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd ..
    rm -rf paru
fi

# Setup Chaotic AUR if not already configured
if ! grep -q \"\[chaotic-aur\]\" /etc/pacman.conf; then
    echo \"Setting up Chaotic AUR...\"
    sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
    sudo pacman-key --lsign-key 3056513887B78AEB
    sudo pacman -U \"https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst\" \"https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst\"
    echo -e \"\n[chaotic-aur]\nInclude = /etc/pacman.d/chaotic-mirrorlist\" | sudo tee -a /etc/pacman.conf
    sudo pacman -Sy
fi

# Install AUR packages
echo \"Installing AUR packages...\"" > packages/aur/install-aur-packages.sh

# Add package installation commands
pacman -Qm | awk '{print $1}' | while read pkg; do
    echo "paru -S --needed $pkg" >> packages/aur/install-aur-packages.sh
done
