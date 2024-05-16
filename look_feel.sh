#!/usr/bin/bash

sudo cp -R icons /usr/share/
sudo cp -R themes /usr/share/

# Theming
xfconf-query -c xsettings -p /Net/ThemeName -n  -t "string" -s "Gruvbox-Material-Dark"
xfconf-query -c xsettings -p /Net/IconThemeName -n -t "string" -s "Obsidian-Red"

# Terminal theming
xfconf-query -c xfce4-terminal -p /color-palette -n -t "string" -s "#282828;#cc241d;#98971a;#d79921;#458588;#b16286;#689d6a;#a89984;#928374;#fb4934;#b8bb26;#fabd2f;#83a598;#d3869b;#8ec07c;#ebdbb2"
xfconf-query -c xfce4-terminal -p /color-background -n -t "string" -s "#1d2021"
xfconf-query -c xfce4-terminal -p /color-foreground -n -t "string" -s "#ebdbb2"

# WM settings
xfconf-query -c xfwm4 -p /general/theme -t "string" -n -s "Gruvbox-Material-Dark-HIDPI"
xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Alt&gt;c -n -t "string" -s "close_window_key"

xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Alt&gt;bracketleft -n -t "string" -s "tile_left_key"
xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Alt&gt;bracketright -n -t "string" -s "tile_right_key"
xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Alt&gt;minus -n -t "string" -s "tile_up_key"
xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Alt&gt;equal -n -t "string" -s "tile_down_key"

xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Alt&gt;f -n -t "string" -s "fullscreen_key"
xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Shift&gt;&lt;Alt&gt;m -n -t "string" -s "maximize_window_key"

xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Shift&gt;&lt;Alt&gt;Left -n -t "string" -s "move_window_left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Shift&gt;&lt;Alt&gt;Right -n -t "string" -s "move_window_right_workspace_key"

xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Primary&gt;&lt;Alt&gt;Left -n -t "string" -s "left_workspace_key"
xfconf-query -c xfce4-keyboard-shortcuts -p /xfwm4/default/&lt;Primary&gt;&lt;Alt&gt;Right -n -t "string" -s "right_workspace_key"
