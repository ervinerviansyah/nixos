{ pkgs, user, ... }:

{
  # Pengaturan user dilakukan di level sistem
  users.users.ervin = {
    isNormalUser = true;
    description = "Ervin Erviansyah";
    extraGroups = [ "wheel" "networkmanager" ];
    #shell = pkgs.fish;  # Shell diatur di sini
  };

  # Aktifkan Fish secara global (opsional)
  #environment.shells = [ pkgs.fish ];
}