{ pkgs, user, ... }:
{
    programs.fish.enable = true;  # Aktifkan Fish untuk user
    
    home.packages = with pkgs; [
        vscode
    ];
}
