#!/bin/bash
if [[ "$XDG_CURRENT_DESKTOP" = "" ]];
then
  desktop=$(echo "$XDG_DATA_DIRS" | sed 's/.*\(xfce\|kde\|gnome\).*/\1/')
else
  desktop=$XDG_CURRENT_DESKTOP
fi

desktop=${desktop,,}
if [[ "$desktop" = "gnome" ]];
then
  sudo apt-get install gnome-terminal
else
  sudo apt-get install xterm
fi
