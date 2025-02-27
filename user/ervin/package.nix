{
    # Steam
    programs.steam.enable = true;

    # Flatpak
    services.flatpak.enable = true;

    # System Packages  
    environment.systemPackages = with pkgs; [
    home-manager
    ];

    # Vnstat
    services.vnstat.enable = true;
}