#!/usr/bin/env bash
## This file will configure the options
## and launch the bars corresponding to each theme.

# Set bspwm configuration for z0mbi3
bspc config border_width 0
bspc config top_padding 5
bspc config bottom_padding 5
bspc config normal_border_color "#3d414f"
bspc config active_border_color "#3d414f"
bspc config focused_border_color "#3d414f"
bspc config presel_feedback_color "#90ceaa"
bspc config left_padding 80
bspc config right_padding 5
bspc config window_gap 10

if pidof -q bspc; then
	pkill -9 bspc > /dev/null
fi

# Launch the bar and or eww widgets
eww -c $HOME/.config/bspwm/configuration/ren01/bar open bar &
eww -c $HOME/.config/bspwm/configuration/ren01/dashboard daemon &
polybar -q tray -c $HOME/.config/bspwm/configuration/ren01/bar/polybar_tray.ini &
