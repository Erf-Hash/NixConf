{ pkgs, ... }:
{
  stylix = {
    enable = true;
    image = ./nix.png;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml"; 

   # targets.btop.enable = true;

  };
}
