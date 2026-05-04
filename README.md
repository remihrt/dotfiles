# dotfiles

Configuration files managed with [chezmoi](https://chezmoi.io).

## Installation

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:remihrt/dotfiles.git
```

Or if chezmoi is already installed:

```sh
chezmoi init --apply git@github.com:remihrt/dotfiles.git
```

## Stack

| Category | Tool |
|---|---|
| Dotfiles manager | [chezmoi](https://chezmoi.io) |
| Tool version manager | [mise](https://mise.jdx.dev) |
| Shell | bash / zsh |
| Editor | [Neovim](https://neovim.io) (LazyVim) |
| Terminal multiplexer | [tmux](https://github.com/tmux/tmux) |
| Prompt | [Starship](https://starship.rs) (Pure-inspired) |
| Window manager | [Sway](https://swaywm.org) (Wayland) |
| Terminal emulator | [foot](https://codeberg.org/dnkl/foot) |
| Status bar | [Waybar](https://github.com/Alexays/Waybar) |

## Tools managed by mise

chezmoi, starship, fzf, lazygit, bat, eza, neovim, node, fd, tmux

## Shell aliases

| Alias | Command |
|---|---|
| `v` / `vi` / `vim` | `nvim` |
| `lg` | `lazygit` |
| `cat` | `bat` |
| `ls`, `ll`, `la`, `lt` | `eza` variants |
| `k` | `kubectl` |
| `kgp` | `kubectl get pods` |

Vi-mode is enabled in both bash and zsh.

## Structure

Chezmoi maps files to their target locations:

```
dot_bashrc                    → ~/.bashrc
dot_zshrc                     → ~/.zshrc
dot_vimrc                     → ~/.vimrc
dot_tmux.conf                 → ~/.tmux.conf
dot_config/nvim/              → ~/.config/nvim/
dot_config/mise/config.toml   → ~/.config/mise/config.toml
dot_config/starship.toml      → ~/.config/starship.toml
dot_config/sway/config        → ~/.config/sway/config
dot_config/waybar/            → ~/.config/waybar/
dot_config/foot/foot.ini      → ~/.config/foot/foot.ini
```

Neovim config is bootstrapped from [LazyVim/starter](https://github.com/LazyVim/starter) via `.chezmoiexternals`, with custom `options.lua` and `lazy.lua` overlaid on top.
