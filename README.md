Akira Hyprland Dotfiles

This repo contains my configuration files for a glass-like hyprland setup. My hyprland config is optimized for my NVIDIA hardware, so you might not need everything in that file. 


+ **System Specifications**:

    Operating System: Gentoo Linux

    Window Manager: Hyprland (Wayland)

    GPU: NVIDIA

    Shell: Zsh

    Status Bar: Waybar

    Application Launcher: Rofi (Wayland fork)

    Visualizer: Cava


+ **Installation Process**:


-Prerequisites:


Ensure the following packages are installed on your system (I used Gentoo, change package name for other distros like Arch):

    gui-wm/hyprland

    gui-apps/waybar

    gui-apps/rofi-wayland

    media-sound/cava

    gui-libs/greetd-regreet


Install


    Clone the repository to your local machine.

    Copy the configuration directories to ~/.config/.

    *Verify that your Cava configuration matches the specified ascii_max_range to ensure the Waybar visualizer renders correctly.
