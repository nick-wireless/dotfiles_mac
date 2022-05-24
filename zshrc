echo 'Hello from .zshrc'

# Set variables
# Using Bat to colourise the Manual pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'" 
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

# Change ZSH options


# Create aliases
# alias ls='ls -lAFh'
alias ls='exa -laF --git'
alias lsfull='exa --tree --level=2'
alias exa='exa -laF --git'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash

# Customise prompts
PROMPT='
%1~ %L %# '

# Add locations to the via path array ()

# export PATH="$N_PREFIX/bin:$PATH"
# Add Visual Studio Code (code)
# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

typeset -U path

path=(
  "$N_PREFIX/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)


# Write handy functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}


# Use ZSH plugins

# Other fine tuning:
