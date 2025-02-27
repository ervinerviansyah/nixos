{ config, pkgs, hostname, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ../../user/ervin
    ];
	
  # Hostname
  networking.hostName = hostname; 

}