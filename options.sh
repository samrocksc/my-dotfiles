#!/bin/bash
title="I LOVE YOU COMPUTTTTERRRRRRR!!!"
prompt="Pick an option:"
options=("A" "B" "C")

echo "$title"
PS3="$prompt "
options=("Install Ubuntu Applications" "Install rPI Applications" "Install Mac Applications" "Install VPS Applications" "Install Windows Apps" "Copy Ubuntu Dotfiles" "Copy rPI Dotfiles" "Copy Mac Dotfiles" "Copy VPS Dotfiles" "Use Standard Keyboard" "Use Mac Keyboard" "Clear your Dotfiles" "Quit")
select opt in "${options[@]}"
do
  case $opt in
    "Install Ubuntu Applications")
      echo "Installing Ubuntu Apps..."
      sh .ubuntu/.apps.sh &
      ;;
    "Install rPI Applications")
      echo "Installing rPI Apps..."
      sh .pi/.apps.sh &
      ;;
    "Install Mac Applications")
      echo "Installing Mac Apps"
      sh .ubuntu/.apps.sh &
      ;;
    "Install VPS Applications")
      echo "Installing VPS Apps"
      sh .ubuntu/.apps.sh &
      ;;
    "Install Windows Apps")
      echo "20 years of Open source suppression does not make windows part of my community."
      ;;
    "Copy Ubuntu Dotfiles")
      echo "Copying Ubuntu Dotfiles"
      sh ./.ubuntu/.cpdotfiles.sh &
      ;;
    "Copy rPI Dotfiles")
      echo "Copying ubuntu Dotfiles"
      sh ./.pi/.pdotfiles.sh &
      ;;
    "Copy Mac Dotfiles")
      echo "Copying ubuntu Dotfiles"
      sh ./.mac/.cpdotfiles.sh &
      ;;
    "Copy VPS Dotfiles")
      echo "Copying Mac dotfiles"
      sh ./.vps/.cpdotfiles.sh &
      ;;
    "Use Standard Keyboard")
      echo "Xmodmap standard keyboard"
      xmodmap ./.Xmodmap.ubuntu &
      ;;
    "Use Mac Keyboard")
      echo "Xmodmap for mac keyboard"
      xmodmap ./.Xmodmap.mac &
      ;;
    "Clear your Dotfiles")
      echo "Clearing dotfiles..."
      rm -rf ~/.vim ~/.vimrc ~/.tmux.conf ~/.zshrc ~/.eslintrc ~/.ctags &
      ;;
    "Quit")
      break
      ;;
    *) echo invalid option;;
  esac
done
