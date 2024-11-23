# Catppuccin Tmux

This repository is a fork of [tokyo-night-tmux](https://github.com/janoamaral/tokyo-night-tmux) by Logico. The license of that code was the MIT license, and is maintained in this repository through the `LICENSE.md` file. A huge thank you to their development efforts, whichout which this would not be possible.

The primary purpose of this repository is to take the visual outline of the tokyo-night-tmux plugin but change the colours and themes to be catppuccin. There is also the [tmux repository in the catppuccin organization](https://github.com/catppuccin/tmux) which you may also experiment with and decide on your preference.

## Dependencies

You will need to install the packages below for everything to work.

### Linux

#### Alpine Linux

```bash
apk add bash bc coreutils gawk git jq playerctl sed
```

#### Arch Linux

```bash
pacman -Sy bash bc coreutils git jq playerctl
```

#### Debian/Ubuntu

```bash
apt-get install bash bc coreutils gawk git jq playerctl
```

## Installation using TPM

In your `tmux.conf`:

```bash
set -g @plugin "mark-pitblado/catppuccin-tmux"
```
