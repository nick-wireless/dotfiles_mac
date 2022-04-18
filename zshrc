echo 'Hello from .zshrc'

# Set variables
# Using Bat to colourise the Manual pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'" 

# Change ZSH options


# Create aliases
alias ls='ls -lAFh'

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
