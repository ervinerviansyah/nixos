{
    # Printer
    services.printing = {
        enable = true;
        #drivers = [ pkgs.epson-escpr ];
    };

    # Scanner
    hardware.sane = {
        enable = true;
        #extraBackends = [ pkgs.epsonscan2 ];
    };
}