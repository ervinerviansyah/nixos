{
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Display Manager
    services.xserver.displayManager.gdm.enable = true;

    # Desktop Environment
    services.xserver.desktopManager.gnome.enable = true;
}
