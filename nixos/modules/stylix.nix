{ pkgs, ... }:
{
    stylix = {
        enable = true;
        polarity = "dark";
        base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml"; 
        image = pkgs.fetchurl {
            url = "https://www.pixelstalk.net/wp-content/uploads/2025/04/Bustling-evening-atmosphere-in-a-Tokyo-Cityscape-Wallpaper-composition.webp";
            hash = "sha256-4I7cRDS/seJkWGbe1jy79WewjTifx9gnp/slkcMM+ec=";
        };

        fonts = { 
            serif = { package = pkgs.dejavu_fonts; name = "DejaVu Serif"; };
            sansSerif = { package = pkgs.dejavu_fonts; name = "DejaVu Sans"; };
            monospace = { package = pkgs.dejavu_fonts; name = "DejaVu Sans Mono"; };
            emoji = { package = pkgs.noto-fonts-emoji; name = "Noto Color Emoji"; }; 
        };
    };
}