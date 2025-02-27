{
  description = "My Configuration of NixOS | ervin@nixos";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } @inputs:
  let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    user = "ervin";
    hosts = [
      { hostname = "nixos"; stateVersion = "24.11"; }
    ];
    pkgs = nixpkgs.legacyPackages.${system};

  in {
    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      extraSpecialArgs = { };
      modules = [
        ./home-manager/home.nix
      ];
    };
  };
   
}