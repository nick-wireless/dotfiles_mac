#!/usr/bin/env zsh
echo "\n<<< Starting ZSH Setup >>>\n"

# Installation unnecessary; it is in the Brewfile.

if grep -Fxp '/usr/local/bin/zsh' '/etc/shells'; then
  echo 'Note: aborting copy as /usr/local/bin/zsh already exists in /etc/shells'
else
  echo 'Enter sudo password to edit /etc/shells'
  echo '/usr/local/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
fi

# Holding code as seems to always run in Kitty - instead trying dotbot method (see install.conf.yaml)
# if [ "$SHELL" = '/usr/local/bin/zsh' ]; then
#   echo '$SHELL is already /usr/local/bin/zsh'
# else
#   echo 'Enter user password to change login shell'
#   chsh -s '/usr/local/bin/zsh'
# fi

if sh --version | grep -q zsh; then 
  echo 'Note: /private/var/select/sh already linked to /bin/zsh'
else
  echo 'Enter sudo password to simlink sh to zsh'
  # Not 100% but illustrative of the direction.
  sudo ln -sfv /bin/zsh /private/var/select/sh
fi

