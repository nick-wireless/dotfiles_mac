#!/usr/bin/env zsh
echo "\n<<< Starting Homebrew Setup >>>\n"

if exists brew; then
  echo "brew exists, skipping install"
else
  # installing homebrew
  echo "brew does not exist, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# Skipping this section now, in favor of the Brew Bundle methodology.
# CELLAR - programs / tools
# brew install httpie
# brew install bat

# CASKS - Applicaitons
# These two zero'ed out as legacy installs on master computer:
# brew install --no-quarantine google-chrome
# brew install --no-quarantine visual-studio-code
# brew install --no-quarantine alfred

# Note to self:
# Using --no-quarantine variable to skip gatekeeper.
# Ensure that this is consistent with future setups.
# See Brewbundle issue 474.

brew bundle --verbose
