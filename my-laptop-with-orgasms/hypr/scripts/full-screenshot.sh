#!/usr/bin/bash
 
grim -c - | wl-copy # Copy to clipboard

if (( $? != 0 )) then
  hyprctl notify 5 4500 "rgb(f38ba8)" " Full Screenshot failed :("
  #                          ^^^^^^ catppuccin mocha red
  exit
fi

wl-paste > "$HOME/Pictures/grim-screenshots/grim-$(date +%d_%m_%Y-%H:%M:%S-%s).png"

hyprctl notify 5 4500 "rgb(a6e3a1)" " Full Screenshot taken"
#                          ^^^^^^ catppuccin mocha green

