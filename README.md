# Arch Linux Dotfiles

Personal configuration files for Arch Linux (Garuda) setup.

## Configuration Files

This repository contains configurations for:
- Shell (ZSH, Starship)
- Desktop Environment (KDE Plasma)
- GTK Themes
- Terminal (Konsole, Waveterm)
- System utilities (Neofetch, Pacman)

## Required Environment Variables

The following environment variables need to be set in your ~/.zshrc or ~/.bash_profile:

```bash
# Network mount credentials
export NETWORK_USER='your_username'
export NETWORK_PASS='your_password'
export NETWORK_HOST='your_network_host'

# Database credentials
export POSTGRES_PASSWORD='your_postgres_password'
export PGADMIN_EMAIL='your_email'
export PGADMIN_PASSWORD='your_pgadmin_password'

# API Keys
export OPENAI_API_KEY='your_openai_api_key'
```

## Installation

1. Clone the repository:
```bash
git clone https://github.com/cypheroxide/arch-dotfiles.git ~/.dotfiles
```

2. Set up your environment variables:
```bash
cp ~/.dotfiles/env.example ~/.env
# Edit ~/.env with your values
source ~/.env
```

3. Create symbolic links:
```bash
ln -s ~/.dotfiles/config/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/custom/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
# Add more symlinks as needed
```

4. Reload your shell:
```bash
source ~/.zshrc  # or ~/.bashrc
```

## Package Management
### AUR Packages
The repository includes a list of installed AUR and Chaotic AUR packages with installation scripts:

```bash
# View the list of packages
cat packages/aur/aur-packages.md

# Install all AUR packages
./packages/aur/install-aur-packages.sh

# Update AUR package list
./packages/aur/update-aur-packages.sh
```


### Flatpak Packages
The repository includes a list of installed Flatpak packages and an installation script:

```bash
# View the list of packages
cat packages/flatpak.md

# Install all Flatpak packages
./packages/install-flatpaks.sh
```


## Components

### Shell Configuration
- ZSH configuration with custom aliases
- Starship prompt configuration
- Custom shell functions and utilities

### Desktop Environment
- KDE Plasma settings and shortcuts
- GTK theme configurations
- Window manager settings

### Terminal
- Konsole configuration
- Waveterm settings and presets

### System Utilities
- Neofetch custom configuration
- Pacman configuration

## Maintenance

To update your configurations:

1. Make changes to your local config files
2. Run the update script (if changes are in the repo):
```bash
cd ~/.dotfiles
./update.sh  # Coming soon
```

## Contributing

Feel free to submit issues and enhancement requests.

## License

See the LICENSE file for details.
