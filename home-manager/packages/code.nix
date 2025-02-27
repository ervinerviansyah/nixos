{ pkgs, ... }:
{
    home.packages = with pkgs; [
        #ripgrep
        #gnumake
        #gcc
        #zig
        #python314
        #jdk
        #xclip
        #eza
        #comma
        #nix-index
    ];
}
