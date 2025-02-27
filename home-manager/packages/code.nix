{ pkgs, ... }:
{
    home.packages = with pkgs; [
        ripgrep
        gnumake
        gcc
        zig
        python314
        jdk
        xclip
        kitty
        fish
        eza
        comma
        nix-index
    ];
}
