
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:$HOME/.local/bin"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Rancher Desktop
export PATH="$HOME/.rd/bin:$PATH"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Starship
eval "$(starship init zsh)"

# ls aliases
alias ls='ls --color=auto'
alias ll='ls -Ahl'
alias la='ls -A'
alias l='ls -C'

# Colors
export CLICOLOR=1
export LSCOLORS=ExGxFxdxCxDxDxxbaDecac
