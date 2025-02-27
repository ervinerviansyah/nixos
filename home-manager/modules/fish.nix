{

programs.fish = {
enable = true;
shellAliases = {
    ls = "eza";
    ll = "ls -l";
    la = "ls -al";
    #du = "${pkgs.du-dust}/bin/dust";
    nupgrade = "sudo nixos-rebuild switch --upgrade";
    nconfig = "sudo nvim /etc/nixos/configuration.nix";
    nbuild = "sudo nixos-rebuild switch --upgrade";
    hconfig = "nvim ~/.config/home-manager/home.nix";
    hbuild = "home-manager build && home-manager switch";
    graph = "git log --all --decorate --oneline --graph";
};
};

}