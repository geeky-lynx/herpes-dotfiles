#!/usr/bin/bash

grim_dir="~/Pictures/grim-screenshots"

grim -g "$(slurp -d)" -c "$HOME/Pictures/grim-screenshots/grim-$(date +%d_%m_%Y-%H:%M:%S-%s).png"
if (( $? != 0 )) then
  hyprctl notify 5 4500 "rgb(f38ba8)" " Regional Screenshot failed :-."
  #                          ^^^^^^ catppuccin mocha red
  exit
fi

hyprctl notify 5 4500 "rgb(a6e3a1)" " Regional Screenshot taken"
#                          ^^^^^^ catppuccin mocha green

