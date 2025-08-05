# Lunur-Dots

<div align=center>
  
![GitHub last commit](https://img.shields.io/github/last-commit/dianaw353/Lunur-Dots?style=for-the-badge&labelColor=101418&color=9ccbfb)
![GitHub Repo stars](https://img.shields.io/github/stars/dianaw353/Lunur-Dots?style=for-the-badge&labelColor=101418&color=b9c8da)
![GitHub repo size](https://img.shields.io/github/repo-size/dianaw353/Lunur-Dots?style=for-the-badge&labelColor=101418&color=d3bfe6)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/dianaw353/Lunur-Dots?style=for-the-badge&labelColor=292324&color=CBA6F7)

</div>

## Screenshots

Comming soon!

If you want the bar, check out [Lunur-Shell](https://github.com/dianaw353/Lunur-Shell) 

## Features
### Applicable to Arch Linux and its derivatives
- Installs appropriate GPU drivers.
- Sets up yay if there's no supported AUR helper installed.
- Installs packages listed in the configuration (Manage in `.chezmoidata/linux/arch/packages.yaml`.)
- Enables multilib repository for gaming-ready configuration.

### Applicable to all distros
#### Dotfiles
- Sane configuration for various tools:
  - Electron - Multiple versions and variations such as Spotify and Vesktop supported via symlinking.
  - Fastfetch - More minimal appearance
  - GameMode
    - Enables performance mode when gaming and switches back to balanced mode after the session.
    - Disables blur and animations on Hyprland during gaming.
    - Includes workaround for Intel CPUs being locked into performance mode.
  - Helix - Better coloring
  - Kanata - Rebinds Caps Lock to function differently
  - Kitty Terminal - Consistent appearance configuration
  - MatUGen - For dynamic coloring across multiple CLI tools and UI kits (Qt 5, Qt 6, GTK3, GTK4) when setting wallpapers. `matugen image /path/to/image [-m dark|light]` to get started. If using Vesktop, also set client theme to "Material You" local theme that will be generated for you.
  - ZSH - Keybinds and environment variables mostly
- PowerLevel10K Oh My Posh prompt
- Custom sane Hyprland configuration

#### Common scripts
- Fixes "Open with" dialog in Dolphin not receiving list of installed apps.
- Enables supplementary services and adds user to supplementary groups.
- Includes fixup for running Hyprland on NVIDIA GPUs if proprietary drivers are enabled in the config and if the machine really has an NVIDIA GPU.
- Includes changes for BlueZ.
- Miscallenous configuration for ZRAM and Limine.

## Installation

```
yay -S chezmoi
```

> [!NOTE]
> For `paru` users, this is `paru -S chezmoi`.

To gather the initial configuration:
```
chezmoi init https://github.com/dianaw353/Lunur-Dots
```

> [!WARNING]
> It's important to review the configuration in `.chezmoidata`! That folder contains most of the out-of-home configuration (such as packages to install and services to enable)!

To `cd` into the directory where the repository has been cloned:
```
chezmoi cd
```

To finally apply the dotfiles after editing files in `.chezmoidata`:
```
chezmoi apply
```

To get and apply dotfile updates:

```
chezmoi update
```

To see what chezmoi would update x file to be run eg.:

```
chezmoi cat ~/.zshrc
```

Additional configuration is required for MatUGen colors to possess Zen Browser:

Install this Firefox plugin first:
https://addons.mozilla.org/en-US/firefox/addon/pywalfox/

And then follow these instructions:
https://github.com/Axenide/PywalZen#installation

> [!WARNING]
> PywalZen is currently broken, but PywalFox works just fine for Firefox.

## Sister Projects

[Lunur-Shell](https://github.com/dianaw353/Lunur-Shell)
