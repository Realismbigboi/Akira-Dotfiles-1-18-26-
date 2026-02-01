#!/bin/bash

shutdown="⏻ Shutdown"
reboot=" Reboot"
logout="󰗽 Logout"
suspend=" Suspend"

selected_option=$(echo -e "$shutdown\n$reboot\n$suspend\n$logout" | rofi -dmenu \
    -p "" \
    -theme ~/.config/rofi/launchers/type-2/style-1.rasi \
    -theme-str '
        window {
            width: 12em;
        }
        listview {
            lines: 4;
            fixed-height: false;
        }
        inputbar {
            children: [ textbox-power ];
        }
        textbox-power {
            expand: true;
            horizontal-align: 0.5;
            vertical-align: 0.5;
            str: "Power";
            text-color: @foreground;
            background-color: transparent;
            font: "JetBrainsMono Nerd Font Bold 14";
        }
    ' \
)

if [ "$selected_option" == "$shutdown" ]; then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]; then
    systemctl reboot
elif [ "$selected_option" == "$suspend" ]; then
    systemctl suspend
elif [ "$selected_option" == "$logout" ]; then
    hyprctl dispatch exit
fi
