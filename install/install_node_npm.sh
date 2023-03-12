#!/bin/bash

echo "Installing nvm (node version manager)"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

source ~/.bashrc
nvm=$(command -v nvm)

if nvm ='nvm'
then
	echo "\nnvm installed successfully"
else
	echo "\nfailed to verify nvm, open another terminal and check if it's installed"
fi

echo "Installing node (latest version)"
nvm install node # "node" is an alias for the latest version
