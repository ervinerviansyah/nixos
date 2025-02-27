{ pkgs, ... }:
{
    home.packages = with pkgs; [
        #libreoffice-fresh
        #zotero
        #logseq
    ];

    #nixpkgs.config.permittedInsecurePackages = [
        #"electron-27.3.11"
    #];
}
