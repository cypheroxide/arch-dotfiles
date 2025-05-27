#!/bin/bash

# Get current date
DATE=$(date +"%Y-%m-%d")

# Create the markdown content
echo "# Flatpak Packages

## Package List (Updated: $DATE)
" > packages/flatpak.md

# Add the package list
echo "### Currently Installed Packages" >> packages/flatpak.md
flatpak list --app --columns=application,version,origin | sed "1d" | while read -r line; do
    app_id=$(echo $line | awk "{print \$1}")
    version=$(echo $line | awk "{print \$2}")
    origin=$(echo $line | awk "{print \$3}")
    echo "- $app_id - v$version ($origin)" >> packages/flatpak.md
done

# Add installation instructions
echo "
## Installation
To install these packages, run the install-flatpaks.sh script in this directory.

\`\`\`bash
./install-flatpaks.sh
\`\`\`" >> packages/flatpak.md

# Update the installation script
echo "#!/bin/bash

# Add Flathub repository if not already added
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install packages" > packages/install-flatpaks.sh

# Add installation commands
flatpak list --app --columns=application | sed "1d" | while read -r app_id; do
    echo "flatpak install flathub $app_id -y" >> packages/install-flatpaks.sh
done

# Make the script executable
chmod +x packages/install-flatpaks.sh packages/update-flatpaks.sh

# Add a message about the update script
echo "
## Updating Package List
To update this package list after installing new Flatpak packages:

\`\`\`bash
./update-flatpaks.sh
\`\`\`" >> packages/flatpak.md
