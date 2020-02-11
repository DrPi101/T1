
#!/bin/bash
set -x

sudo apt-get update --fix-missing

pip3 install pygame
pip3 install numpy
pip3 install random


function apt_install {
  sudo apt-get -y install $1
  if [ $? -ne 0 ]; then
    echo "could not install $1 - abort"
    exit 1
  fi
}

apt_install git
