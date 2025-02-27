{ pkgs, ... }:
{
    home.packages = with pkgs; [
        brave
	kitty
	fish
	htop
	neofetch
	git
	vnstat
	wget
    ];
}
