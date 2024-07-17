#!/usr/bin/bash

sudo cp -R icons /usr/share/
sudo cp -R themes /usr/share/
sudo cp -R wallpapers /usr/share/
mkdir -p "$HOME/.local/share/xfce4/terminal/colorschemes/"
cp gruvbox-dark.theme "$HOME/.local/share/xfce4/terminal/colorschemes/"

# Theming
# Cannot change wallpaper
# xfconf-query --channel xfce4-desktop --list | grep last-image | xargs xfconf-query -c xfce4-desktop -s /usr/share/wallpapers/red-trees.jpg -p

xfconf-query -c xsettings -pn /Net/ThemeName -t "string" -s "Gruvbox-Material-Dark"
xfconf-query -c xsettings -pn /Net/IconThemeName -t "string" -s "Gruvbox-Plus-Dark"

xfce4-panel-profiles load alx-panel.tar.bz2

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
