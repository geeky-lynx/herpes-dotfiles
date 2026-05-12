#!/usr/bin/bash

dimensions=$(slurp -d)
grim -c -g "$dimensions" - | wl-copy # Add to clipboard

if (( $? != 0 )) then
  hyprctl notify 5 4500 "rgb(f38ba8)" " Regional Screenshot failed :-."
  #                          ^^^^^^ catppuccin mocha red
  exit
fi

wl-paste > "$HOME/Pictures/grim-screenshots/grim-$(date +%d_%m_%Y-%H:%M:%S-%s).png"

hyprctl notify 5 4500 "rgb(a6e3a1)" " Regional Screenshot taken"
#                          ^^^^^^ catppuccin mocha green

