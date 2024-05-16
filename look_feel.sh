#!/usr/bin/bash

sudo cp -R icons /usr/share/
sudo cp -R themes /usr/share/

# Theming
xfconf-query -c xsettings -pn /Net/ThemeName -s "Gruvbox-Material-Dark"
xfconf-query -c xsettings -pn /Net/IconThemeName -s "Obsidian-Red"

# Terminal theming
xfconf-query -c xfce4-terminal -pn "color-palette" -s "#282828;#cc241d;#98971a;#d79921;#458588;#b16286;#689d6a;#a89984;#928374;#fb4934;#b8bb26;#fabd2f;#83a598;#d3869b;#8ec07c;#ebdbb2"
xfconf-query -c xfce4-terminal -pn "color-background" -s "#1d2021"
xfconf-query -c xfce4-terminal -pn "color-foreground" -s "#ebdbb2"

# WM settings
xfconf-query -c xfwm4 -pn "theme" -s "Gruvbox-Material-Dark-HIDPI"
xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Alt&gt;c" -s "close_window_key"

xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Alt&gt;bracketleft" -s "tile_left_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Alt&gt;bracketright" -s "tile_right_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Alt&gt;minus" -s "tile_up_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Alt&gt;equal" -s "tile_down_key"

xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Alt&gt;f" -s "fullscreen_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Shift&gt;&lt;Alt&gt;m" -s "maximize_window_key"

xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Shift&gt;&lt;Alt&gt;Left" -s "move_window_left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Shift&gt;&lt;Alt&gt;Right" -s "move_window_right_workspace_key"

xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Primary&gt;&lt;Alt&gt;Left" -s "left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -pn "&lt;Primary&gt;&lt;Alt&gt;Right" -s "right_workspace_key"
