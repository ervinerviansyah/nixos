{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
        #corefonts
        #vistafonts
        #nerdfonts  
    ];

    fonts.fontconfig.enable = true;
}
