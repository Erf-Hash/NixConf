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


  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };


  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  networking.hostName = "nixos";
  networking.nameservers = ["8.8.8.8" "178.22.122.100" "1.1.1.1"];
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.firewall.allowedTCPPorts = [ ... ];


  time.timeZone = "Asia/Terhan";


  i18n.defaultLocale = "en_US.UTF-8";
    console = {
      font = "Lat2-Terminus16";
      useXkbConfig = true; # use xkb.options in tty.
    };


  security.rtkit.enable = true;
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
    packages = with pkgs; [
      python3
      fastfetch
    ];
  };
  services.getty.autologinUser = "erf";


  programs.zsh.enable = true;


  environment.variables = {
    EDITOR = "nvim";
  };


  hardware.graphics.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];


  system.stateVersion = "24.05"; # Did you read the comment?
}
