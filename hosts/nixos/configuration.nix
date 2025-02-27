{ config, pkgs, ... }:

{
  # Contoh konfigurasi minimal
  system.stateVersion = "24.11";
  networking.hostName = "nixos";

  # Modules
   imports =
    [ 
      ./hardware-configuration.nix
      ../../users/ervin
    ];
}