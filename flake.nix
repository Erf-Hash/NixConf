{
  description = "Configuration Flake";


  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "nixpkgs/nixos-24.05";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

   stylix.url = "github:danth/stylix";
  };


  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, nixvim, stylix, ... }:

    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-stable = nixpkgs-stable.legacyPackages.${system};
      username = "erf";

    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./nixos/configuration.nix
          nixvim.nixosModules.nixvim
         stylix.nixosModules.stylix
        ];

        specialArgs = {
          inherit username; 
          inherit pkgs-stable;
        };
      };

      homeConfigurations.erf = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./home-manager/home.nix ];

        extraSpecialArgs = {
            inherit username;
            inherit pkgs-stable;
        };
      };
    };
}
