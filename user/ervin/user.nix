{
    users.users.ervin = {
    isNormalUser = true;
    description = "Ervin Erviansyah";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
    shell = pkgs.fish;
    };
}