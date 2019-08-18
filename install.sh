#!/usr/bin/env bash

DOWNLOAD_URL=https://github.com/colmugx/dotfiles
DOTFILES=$HOME/.dotfiles

git clone $DOWNLOAD_URL $DOTFILES

clear
echo
echo "==============================================="
echo '             .__
  ____  ____ |  |   _____  __ __  _______  ___
_/ ___\/  _ \|  |  /     \|  |  \/ ___\  \/  /
\  \__(  <_> )  |_|  Y Y  \  |  / /_/  >    <
 \___  >____/|____/__|_|  /____/\___  /__/\_ \
     \/                 \/     /_____/      \/'
echo "==============================================="
echo

echo "[0]: all"
echo "[1]: develop environment"
echo "[2]: Homebrew (only MacOS)"

read -p "press number (default=[0]):" selected

if [ -z "${selected}" ];then
	selected=0
fi

echo -e "\n======================"
echo "Installing Dotfiles..."
echo -e "======================\n\n"


case $selected in
  0)
    source $DOTFILES/build/dev.sh
    source $DOTFILES/build/brew.sh
  ;;
  1)
    source $DOTFILES/build/dev.sh
  ;;
  2)
    source $DOTFILES/build/brew.sh
  ;;
  *)
    echo "Illegal option!"
esac

