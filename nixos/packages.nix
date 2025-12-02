{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    # Development
    distrobox # PURGE
    git
    sqlite
    gcc
    gnumake # These two can be redundant
    uv
    rustup # Impure piece of shit
    mininet # For Research purposes only
    typst
    python313
    jupyter
   (python3.withPackages (ps: with ps; [ ]))

    #lisp test
    racket
    hyu

    # Hyprland
    waybar
    mako
    libnotify
    hyprshot
    rofi-wayland
    wl-clipboard

    # Sound
    qjackctl
    pulsemixer

    # Command-line utils
    fzf
    bat
    btop
    tmux
    file
    tldr
    starship
    fastfetch
    zip
    unzip
    proxychains
    traceroute
    ffmpeg
    nixd
    nixfmt-rfc-style
    hyperfine
    proxychains
    zellij

    # General apps
    alacritty
    hiddify-app
    zathura
    imv
    mpv
    brave
    firefox
    telegram-desktop
    android-file-transfer
    localsend
    wireshark
    # musescore
    

   # Gaming
   pcsx2
  ];

  fonts.packages = with pkgs; [ ir-standard-fonts ];
}
