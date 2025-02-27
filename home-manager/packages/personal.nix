{ pkgs, ... }:
{
    home.packages = with pkgs; [
        bitwarden-desktop
        zapzap
        telegram-desktop
        gabutdm
        discord
        spotify
        warpinator
        super-productivity
        blanket
        collision
        curtail
        shortwave
    ];
}
