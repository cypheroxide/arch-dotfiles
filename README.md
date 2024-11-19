# Arch-Based Workstation Dotfiles

This repository contains my configuration files for my Arch-based workstation, originally built on Garuda Linux. This setup provides a solid foundation for productivity and personalization.

## Overview

The repository is organized into the following directories:

- `dotfiles`: Contains all the configuration files used to set up the system.
- `config`: Holds configuration files specific to certain applications or services.
- `scripts`: Includes scripts that automate tasks, such as setting up networks or updating software.
- `settings`: Stores general settings and notes for customizing the environment.

## Installation

To use these dotfiles, follow these steps:

1. Clone this repository: `git clone https://github.com/cypheroxide/arch-dotfiles.git`
2. Set the `DOTFILES_DIR` environment variable to point to the cloned repository's path: `export DOTFILES_DIR=/path/to/your/cloned/repo/directory`
3. Run `source $DOTFILES_DIR/.config/src/init.sh` to initialize the dotfiles
4. Optionally, run `dotfile -r` to refresh all configured files

## Configuration Files and Settings

The following configuration files are included in this repository:

- `.bashrc` and `.bash_profile`: Custom bash shell configurations.
- `.zshrc` and `.zprofile`: Custom zsh shell configurations.
- `.vimrc` and `.tmux.conf`: Custom vim and tmux configurations, respectively.

You can find more information about each configuration file by running `git ls-files ./{filename}` in the repository directory. The README files accompanying each dotfile provide additional context and usage instructions.

## Scripts

The following scripts are included:

- `network.sh`: Automates setting up a network connection.
- `software.sh`: Updates software packages to ensure compatibility.

Run `./script-name.sh` to execute the script, replacing "script-name" with the name of the desired script.

## Notes and Warnings

This repository is intended for use on an Arch-based system. Compatibility may not be guaranteed on other Linux distributions or systems.

Please note that I don't explicitly test every configuration against all possible setups, so you should test any changes thoroughly before making them a part of your production environment.

If you encounter issues, please feel free to reach out and provide detailed descriptions of the problems encountered.