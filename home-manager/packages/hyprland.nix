{ pkgs, ... }:
{
    home.packages = with pkgs; [
        libsForQt5.xwaylandvideobridge
        libnotify
        xdg-desktop-portal-gtk
        xdg-desktop-portal-hyprland
    ];
}
