# Arch Linux Dotfiles

Personal configuration files for Arch Linux (Garuda) setup.

## Configuration Files

This repository contains configurations for:
- Shell (ZSH, Starship)
- Desktop Environment (KDE Plasma)
- GTK Themes
- Terminal (Konsole, Waveterm)
- System utilities (Neofetch, Pacman)

## Environment Variables Required

The following environment variables need to be set for certain functionalities:

```bash
# Network mount credentials (required for nc-drive alias)
export NETWORK_USER='your_username'
export NETWORK_PASS='your_password'
export NETWORK_HOST='your_network_host'
```

## Installation

1. Clone the repository:
```bash
git clone https://github.com/cypheroxide/arch-dotfiles.git ~/.dotfiles
```

2. Create required environment variables in ~/.zshrc or ~/.bash_profile:
```bash
echo 'export NETWORK_USER="your_username"' >> ~/.zshrc
echo 'export NETWORK_PASS="your_password"' >> ~/.zshrc
echo 'export NETWORK_HOST="your_network_host"' >> ~/.zshrc
```

3. Run the installation script (coming soon)

## License

See the LICENSE file for details.
