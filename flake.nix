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
    user = "ervin";
    hosts = [
      { hostname = "nixos"; }
    ];

    pkgs = nixpkgs.packages.${system};

    makeSystem = { hostname }: 
      nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ({ ... }: {
            system.stateVersion = "24.11";  # Versi langsung di sini
            specialArgs = { inherit inputs user; };
          })
          ./hosts/${hostname}/configuration.nix
        ];
      };

  in {
    nixosConfigurations = builtins.listToAttrs (
      map (host: {
        name = host.hostname;
        value = makeSystem host;
      }) hosts
    );

    homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      home.stateVersion = "24.11";
      extraSpecialArgs = { inherit inputs user; };
      modules = [
        ./home-manager/home.nix
      ];
    };
  };
}