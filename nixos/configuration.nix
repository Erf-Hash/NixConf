{ pkgs, username, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/hyprland.nix
    #        ./modules/nixvim/nixvim.nix
    ./modules/nvf.nix
    ./modules/stylix.nix
    ./modules/virtualization.nix
    ./modules/wireshark.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking = {
    hostName = "nixos";
    nameservers = [ "8.8.8.8" ];
    networkmanager.dns = "none";
  };

  networking.firewall = {
    enable = true;
    allowedUDPPorts = [ 53 53317 ];
    allowedTCPPorts = [ 22 80 443 53317 ];
  };

  time.timeZone = "Asia/Terhan";

  console = {
    font = "Lat2-Terminus16";
    useXkbConfig = true; # use xkb.options in tty.
  };

  services.xserver = {
    xkb.layout = "us";
  };

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    jack.enable = true;
  };

  users.users.erf = {
    isNormalUser = true;
    shell = pkgs.nushell;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };
  services.getty.autologinUser = "erf";

  environment.variables = {
    EDITOR = "nvim";
    SHELL = "nu";
  };

  services.greetd = {
    # PURGE THIS SHIT ASAP
    enable = true;
    settings = {
      initial_session = {
        command = "${pkgs.hyprland}/bin/Hyprland";
        user = "${username}";
      };
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --greeting 'Welcome to NixOS!' --asterisks --remember --remember-user-session --time -cmd ${pkgs.hyprland}/bin/Hyprland";
        user = "greeter";
      };
    };
  };

  hardware.graphics.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nixpkgs.config.allowUnfree = true;
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  security.rtkit.enable = true;
  security.sudo.wheelNeedsPassword = false;

  system.stateVersion = "24.05"; # DO NOT CHANGE THIS
}
