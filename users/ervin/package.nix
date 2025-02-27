{
    # Steam
    programs.steam.enable = false;

    # Flatpak
    services.flatpak.enable = false;

    # System Packages  
    environment.systemPackages =  [
    
    ];

    # Vnstat
    services.vnstat.enable = true;
}
