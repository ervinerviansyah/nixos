{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ../../user/ervin
    ];
	
  # Hostname
  networking.hostName = "nixos"; 

# System Version
  system.stateVersion = "24.11";

}
