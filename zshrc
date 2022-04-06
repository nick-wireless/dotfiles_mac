echo 'Hello from .zshrc.'

# Set variables


# Change ZSH options


# Create aliases
alias ls='ls -lAFh'

# Customise prompts
PROMPT='
%1~ %L %# '

# Add locations to the $Path Variable


# Write handy functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

# Use ZSH plugins


 
