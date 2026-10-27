{pkgs, ...}:
{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc      # libstdc++/libgcc — the #1 cause of wheel failures
    zlib
    openssl
    curl
    libzip
    freetype
    fontconfig
    glib
    libGL
  ];
}