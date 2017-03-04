#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

sudo apt-get install -y git-core
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo apt install node-express-generator


# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git
sudo apt-get install -y curl
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.10.12


# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

#Test
which git
which heroku
which nodejs
which npm
which curl
which nvm
which rlwrap
