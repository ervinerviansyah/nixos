{

# If you prefer to use Desktop Environment, you can enable it here.
# This configuration will enable GNOME Desktop Environment with GDM Display Manager.
# You can also use other Desktop Environment like KDE, XFCE, etc.
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Display Manager
    services.xserver.displayManager.gdm.enable = false;

    # Desktop Environment
    services.xserver.desktopManager.gnome.enable = false;

# If you prefer to use Hyprland, you can enable it here.
    programs.hyprland = {
        enable = true;
        withUWSM = true;
        xwayland.enable = true;
    };

    #security.pam.services.hyprlock = {
    #    enable = true;
    #    lockOnSleep = true;
    #    lockOnHibernate = true;
    #    lockOnLid = true;
    #};
}
