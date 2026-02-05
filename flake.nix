{
  description = "Configuration Flake";

  nixConfig.substituters = [ 
                "https://cache.nixos.org"
                #"https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
                #"https://mirror.sjtu.edu.cn/nix-channels/store"
                #"https://mirrors.ustc.edu.cn/nix-channels/store"
                ];

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # firefox-addons.url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
    # firefox-addons.inputs.nixpkgs.follows = "nixpkgs";

    nix-doom-emacs-unstraightened.url = "github:marienz/nix-doom-emacs-unstraightened";
    nix-doom-emacs-unstraightened.inputs.nixpkgs.follows = "";

    nvf.url = "github:notashelf/nvf";

    stylix.url = "github:danth/stylix";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-unstable,
      home-manager,
      ...
    }@inputs:

    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      pkgs-unstable = nixpkgs-unstable.legacyPackages.${system};
      username = "erf";

    in
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./nixos/configuration.nix
          inputs.nvf.nixosModules.default
          inputs.stylix.nixosModules.stylix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.backupFileExtension = "backup";
            home-manager.users.erf = ./home-manager/home.nix;
            home-manager.extraSpecialArgs = {
              inherit system;
              inherit pkgs-unstable;
              inherit username;
              # firefox-addons = inputs.firefox-addons;
            };

          }
        ];

        specialArgs = {
          inherit system;
          inherit pkgs-unstable;
          inherit username;
        };
      };
    };
}
