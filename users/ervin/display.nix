{

# If you prefer to use Desktop Environment, you can enable it here.
# This configuration will enable GNOME Desktop Environment with GDM Display Manager.
# You can also use other Desktop Environment like KDE, XFCE, etc.
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Display Manager
    services.xserver.displayManager.gdm.enable = true;

    # Desktop Environment
    services.xserver.desktopManager.gnome.enable = true;

}
