#!/usr/bin/bash

sudo cp -R icons /usr/share/
sudo cp -R themes /usr/share/

# Theming
xfconf-query -c xsettings -pn /Net/ThemeName -t "string" -s "Gruvbox-Material-Dark"
xfconf-query -c xsettings -pn /Net/IconThemeName -t "string" -s "Obsidian-Red"

# Terminal theming
xfconf-query -c xfce4-terminal -pn /color-palette -t "string" -s "#282828;#cc241d;#98971a;#d79921;#458588;#b16286;#689d6a;#a89984;#928374;#fb4934;#b8bb26;#fabd2f;#83a598;#d3869b;#8ec07c;#ebdbb2"
xfconf-query -c xfce4-terminal -pn /color-background -t "string" -s "#1d2021"
xfconf-query -c xfce4-terminal -pn /color-foreground -t "string" -s "#ebdbb2"

# WM settings
xfconf-query -c xfwm4 -pn /general/theme -t "string" -s "Gruvbox-Material-Dark-HIDPI"
xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Alt>c" -t "string" -s "close_window_key"

xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Alt>bracketleft" -t "string" -s "tile_left_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Alt>bracketright" -n -t "string" -s "tile_right_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Alt>minus" -t "string" -s "tile_up_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Alt>equal" -t "string" -s "tile_down_key"

xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Alt>f" -t "string" -s "fullscreen_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Shift><Alt>m" -t "string" -s "maximize_window_key"

xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Shift><Alt>Left" -t "string" -s "move_window_left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Shift><Alt>Right" -t "string" -s "move_window_right_workspace_key"

xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Primary><Alt>Left" -t "string" -s "left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "/xfwm4/custom/<Primary><Alt>Right" -t "string" -s "right_workspace_key"
