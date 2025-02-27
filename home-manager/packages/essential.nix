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
	neovim
	wget
    ];
}
