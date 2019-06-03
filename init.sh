#! /bin/bash

#sh -c "$(curl -fsSL https://raw.github.com/andre682/personal-config/master/init.sh)"

# Default settings
DIRECTORY=${DIRECTORY:-~/personal-config}
MAINREPO=${MAINREPO:-andre682/personal-config}
MAINREMOTE=${MAINREMOTE:-https://github.com/${REPO}.git}
MAINBRANCH=${MAINBRANCH:-master}

echo "APT-GET UPDATE..."
apt-get update -qq
echo "Install node"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt-get install -y nodejs -qq

git clone --depth=1 --branch "$MAINBRANCH" "$MAINREMOTE" "$DIRECTORY"



# rm -rf $DIRECTORY

echo "DEPENDENCIES..."
apt-get install zsh -y -qq
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
