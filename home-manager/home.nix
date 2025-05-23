{ config, pkgs, pkgs-stable, username, ... }:
{
    imports = [
        ./modules/hyprland.nix
        ./modules/git.nix
        ./modules/starship.nix
        ./modules/alacritty.nix
        ./modules/nushell.nix
        ./modules/carapace.nix
        ./modules/firefox/firefox.nix
        ./modules/vscode.nix
        ./modules/zoxide.nix
    ];


    home.username = "erf";
    home.homeDirectory = "/home/erf";


    xdg.mimeApps = {
            enable = true;
            defaultApplications = {
                "application/pdf" = "org.pwmt.zathura.desktop";
            };
    };


    home.sessionVariables = {
        EDITOR = "nvim";
    };


    programs.home-manager.enable = true;


    nixpkgs.config.allowUnfree = true; 


    home.stateVersion = "24.05";

}
