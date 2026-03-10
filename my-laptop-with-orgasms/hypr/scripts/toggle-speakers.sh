#!/usr/bin/bash

pamixer --toggle-mute
echo $(pamixer --get-volume) > /tmp/wobpipe
if (( $? != 0 )) then
  hyprctl notify 5 4500 "rgb(f38ba8)" " "
  #                          ^^^^^^ catppuccin mocha red
  exit
fi

is_muted=$(pamixer --get-mute)
echo "$is_muted is the truth"
if [[ "$is_muted" == "true" ]]; then
  hyprctl notify 5 5000 "rgb(a6e3a1)" " Microphone is muted"
  exit
fi
hyprctl notify 5 5000 "rgb(a6e3a1)" " Speakers are unmuted"
#                          ^^^^^^ catppuccin mocha green

