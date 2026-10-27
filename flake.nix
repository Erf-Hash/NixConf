{
  description = "Configuration Flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable/";
    nixpkgs-stable.url = "nixpkgs/nixos-25.11";

    home-manager.url = "github:nix-community/home-manager/";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    stylix.url = "github:danth/stylix/";
    stylix.inputs.nixpkgs.follows = "nixpkgs";

    lazyvim.url = "github:pfassina/lazyvim-nix";
    lazyvim.inputs.nixpkgs.follows = "nixpkgs";

    # firefox-addons.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    # firefox-addons.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-stable,
      home-manager,
      ...
    }@inputs:

    let
      system = "x86_64-linux";
      username = "erf";
      #pkgs = nixpkgs.legacyPackages.${system};
      pkgs-stable = nixpkgs-stable.legacyPackages.${system};
    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./nixos/configuration.nix
          inputs.stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.users.erf = ./home-manager/home.nix;
            home-manager.extraSpecialArgs = {
              inherit system;
              inherit pkgs-stable;
              inherit username;
              lazyvim = inputs.lazyvim;
            };

          }
        ];

        specialArgs = {
          inherit system;
          inherit pkgs-stable;
          inherit username;
        };
      };
    };
}
