#!/bin/bash
title="I LOVE YOU COMPUTTTTERRRRRRR!!!"
prompt="Pick an option:"
options=("A" "B" "C")

echo "$title"
PS3="$prompt "
options=("Install Ubuntu Applications" "Install rPI Applications" "Copying ubuntu Dotfiles" "Copy Mac Dotfiles" "Use Standard Keyboard" "Use Mac Keyboard" "Clear your Dotfiles")
select opt in "${options[@]}"
do
  case $opt in
    "Install Ubuntu Applications")
      echo "Installing Ubuntu Apps..."
      sh ./.ubuntuapps.sh &
      ;;
    "Install rPI Applications")
      echo "Installing rPI Apps..."
      sh ./.rpiapps.sh &
      ;;
    "Copy Ubuntu Dotfiles")
      echo "Copying ubuntu Dotfiles"
      sh ./.cpdotfiles.ubuntu.sh &
      ;;
    "Copy Mac Dotfiles")
      echo "Copying Mac dotfiles"
      sh ./.cpdotfiles.mac.sh &
      ;;
    "Use Standard Keyboard")
      echo "Xmodmap standard keyboard"
      xmodmap ./.Xmodmap.ubuntu
      ;;
    "Use Mac Keyboard")
      echo "Xmodmap for mac keyboard"
      xmodmap ./.Xmodmap.mac
      ;;
    "Clear your Dotfiles")
      echo "Clearing dotfiles..."
      rm ~/.vim ~/.vimrc ~/.tmux.conf ~/.zshrc ~/.eslintrc ~/.ctags &
      ;;
    "Quit")
      break
      ;;
    *) echo invalid option;;
  esac
done
