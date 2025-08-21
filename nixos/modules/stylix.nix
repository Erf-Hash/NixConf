{ pkgs, ... }: {
  stylix = {
    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";
    image = pkgs.fetchurl {
      url =
        "https://www.pixelstalk.net/wp-content/uploads/2025/06/A-cinematic-view-of-Porsche-under-a-glowing-sunset-with-palm-trees-swaying-gently-in-the-background.webp";
      hash = "sha256-82qOOwKhbSyFsueZWTwtGkECllpkOt+uwhQSDkyx5kI=";
    };

    fonts = {
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      monospace = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans Mono";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };
  };
}
