{ config, lib, pkgs, pkgs-stable, username, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/hyprland.nix
      ./modules/nixvim/nixvim.nix
      ./modules/stylix.nix
    ];


  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  networking.hostName = "nixos";
  networking.nameservers = ["8.8.8.8" "178.22.122.100" "1.1.1.1"];


  time.timeZone = "Asia/Terhan";


  i18n.defaultLocale = "en_US.UTF-8";
    console = {
      font = "Lat2-Terminus16";
      useXkbConfig = true; # use xkb.options in tty.
    };


  security.rtkit.enable = true;
  security.sudo.extraRules = [
        { 
        users = [ "erf" ];
        options = [ "NOPASSWD" ];
        }
  ];

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    jack.enable = true;
  };


  users.users.erf = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
  services.getty.autologinUser = "erf";


  programs.zsh.enable = true;


  environment.variables = {
    EDITOR = "nvim";
  };


  hardware.graphics.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];


  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };


  system.stateVersion = "24.05"; # Did you read the comment?
}
