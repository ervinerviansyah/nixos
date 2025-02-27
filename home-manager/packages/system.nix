{ pkgs, ... }:
{
    home.packages = with pkgs; [
        htop
        neofetch
        fastfetch
        git
        unzip
        wget
        ntfs3g
        p7zip-rar
        vnstat
        qdiskinfo
        pavucontrol
    ];
}
