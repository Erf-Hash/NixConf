{ pkgs, ... }:
{

  environment.systemPackages = with pkgs; [
    # Development
    git
    sqlite
    gcc
    python313
    uv
    rustup # Impure piece of shit
    (python313.withPackages (ps: with ps; [ ]))

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
    progress
    pandoc
    ffmpeg
    nixd
    nixfmt-rfc-style

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
  ];

  fonts.packages = with pkgs; [ ir-standard-fonts ];
}
