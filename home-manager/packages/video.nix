{ pkgs, ... }:
{
    home.packages = with pkgs; [
        obs-studio
        kdenlive
        vlc
        handbrake
        synfigstudio
    ];
}
