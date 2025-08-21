{ pkgs, ... }:
{
    stylix = {
        enable = true;
        base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml"; 
        image = pkgs.fetchurl {
            url = "https://www.pixelstalk.net/wp-content/uploads/2016/05/Epic-Anime-Awesome-Wallpapers.jpg";
            hash = "sha256-enQo3wqhgf0FEPHj2coOCvo7DuZv+x5rL/WIo4qPI50=";
        };

        fonts = { 
            serif = { package = pkgs.dejavu_fonts; name = "DejaVu Serif"; };
            sansSerif = { package = pkgs.dejavu_fonts; name = "DejaVu Sans"; };
            monospace = { package = pkgs.dejavu_fonts; name = "DejaVu Sans Mono"; };
            emoji = { package = pkgs.noto-fonts-emoji; name = "Noto Color Emoji"; }; 
        };
    };
}