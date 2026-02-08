#!/bin/bash

is_enabled=$(ps -a | grep hyprsunset)
echo $is_enabled

if [[ -z $is_enabled ]]; then
  # pkill hyprsunset
  hyprsunset -t 4500 &
  hyprctl notify 5 4500 "rgb(a6e3a1)" " Blue light filter enabled"
  echo "\a"
  exit
fi

pkill hyprsunset
# hyprsunset -t 4500
hyprctl notify 5 4500 "rgb(a6e3a1)" " Blue light filter disabled"
echo "\a"
exit

# iseljenje do 5. jula
# ponovno useljenje do 28. avgusta
