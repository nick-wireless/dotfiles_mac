#!/usr/bin/env zsh
echo "\n<<< Starting Node Setup >>>\n"

# Node versions are managed with 'n', installed in the Brew file.
# See zshrc for N_PREFIX variable and addition to path.

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node and NPM with n ..."
  n lts
fi

# Installing global NPM packages
npm install --global firebase-tools
npm install --global json-server
npm install --global trash-cli
npm install --global yarn

echo "Global NPM packages installed:"
npm list --global --depth=0



