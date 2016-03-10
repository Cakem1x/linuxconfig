#!/bin/bash

IN="LVDS1"
EXT="VGA1"

if (xrandr | grep "$EXT" | grep " connected")
then
  if (xrandr | grep "$EXT" | grep "+") 
  then
    if (xrandr | grep "$IN" | grep "+")
    then
      xrandr --output $EXT --off --output $IN --auto
    else
      xrandr --output LVDS1 --auto --output VGA1 --right-of LVDS1 --auto
    fi
  else
    xrandr --output $IN --off --output $EXT --auto
  fi
else
   xrandr --output $EXT --off --output $IN --auto
fi
systemctl --user start wallpaper
