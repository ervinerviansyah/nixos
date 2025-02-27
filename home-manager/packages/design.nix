{ pkgs, ... }:
{
    home.packages = with pkgs; [
        gimp-with-plugins
        inkscape
        scribus
        krita
        darktable
        blender-hip
        gimpPlugins.resynthesizer
        blockbench
        godot_4
    ];

    nixpkgs.config.allowUnfree = true;
    nixpkgs.config.allowBroken = true;
}
