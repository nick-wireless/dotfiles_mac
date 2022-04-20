echo 'Hello from .zshrc'

# Set variables
# Using Bat to colourise the Manual pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'" 
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Change ZSH options


# Create aliases
# alias ls='ls -lAFh'
alias ls='exa -laF --git'
alias lsfull='exa --tree --level=2'

# Customise prompts
PROMPT='
%1~ %L %# '

# Add locations to the $Path Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"



# Write handy functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

# Use ZSH plugins

# Other fine tuning:
