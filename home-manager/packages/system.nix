{ pkgs, ... }:
{
    home.packages = with pkgs; [
        #fastfetch
        #unzip
        #ntfs3g
        #p7zip-rar
        #qdiskinfo
        #pavucontrol
    ];
}
