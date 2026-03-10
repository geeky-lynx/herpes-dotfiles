#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = 1 ] ; then
    hyprctl notify 1 5000 "rgb(8dc4de)" "Game mode is enabled"
    #                          ^^^^^^ catppuccin mocha blue
    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"
    # pkill -f xava-x86_64.AppImage
    exit
fi
hyprctl notify 1 5000 "rgb(8dc4de)" "Game mode is disabled"
#                          ^^^^^^ catppuccin mocha blue
hyprctl reload
