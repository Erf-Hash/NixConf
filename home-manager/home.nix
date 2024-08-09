{ config, pkgs, pkgs-stable, username, ... }:

{
  imports = [
    ./modules/hyprland.nix
    ./modules/git.nix
    ./modules/starship.nix
    ./modules/alacritty.nix
    ./modules/zsh.nix
  ];


  home.username = "erf";
  home.homeDirectory = "/home/erf";


  home.sessionVariables = {
     EDITOR = "nvim";
  };


  programs.home-manager.enable = true;


  home.stateVersion = "24.05";
}
