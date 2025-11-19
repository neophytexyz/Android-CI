#!/bin/bash

# Install Rsync
sudo apt-get install rsync

# Instailling Crave In Linux/Gitpod
curl -s https://raw.githubusercontent.com/accupara/crave/master/get_crave.sh | bash -s -- 

# Install in system 
mkdir -p ${HOME}/bin/
mv ${PWD}/crave ${HOME}/bin/ 
sudo ln -sf /home/${USER}/bin/crave /usr/bin/crave; sudo chmod +x /usr/bin/crave 

# Run Crave 
crave -c crave.conf devspace
