#!/usr/bin/bash

pamixer --toggle-mute --default-source
if (( $? != 0 )) then
  hyprctl notify 5 4500 "rgb(f38ba8)" " Censorship attempt failed xD"
  #                          ^^^^^^ catppuccin mocha red
  exit
fi

is_muted=$(pamixer --default-source --get-mute)
echo "$is_muted is the truth"
if [[ "$is_muted" == "true" ]]; then
  hyprctl notify 5 5000 "rgb(a6e3a1)" " Microphone is muted"
  exit
fi
hyprctl notify 5 5000 "rgb(a6e3a1)" " Microphone is unmuted"
#                          ^^^^^^ catppuccin mocha green

