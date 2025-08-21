{ pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    package = pkgs.hyprland.override {
      legacyRenderer = true;
      enableXWayland = true;
    };
  };
}
