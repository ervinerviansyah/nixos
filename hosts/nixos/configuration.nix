{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ../../user/ervin/
    ];
	
  # Hostname
  networking.hostName = hostname; 

  # System Version
  system.stateVersion = stateVersion;

}