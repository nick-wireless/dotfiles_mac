#!/usr/bin/env zsh
echo "\n<<< Starting Homebrew Setup >>>\n"

# Setting up Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# CELLAR - programs / tools
brew install httpie
brew install bat

# CASKS - Applicaitons
# These two zero'ed out as legacy installs on master computer:
# brew install --no-quarantine google-chrome
# brew install --no-quarantine visual-studio-code
brew install --no-quarantine alfred 
