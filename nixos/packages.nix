{ pkgs, inputs, ... }:
{

  environment.systemPackages = with pkgs; [
    # Development
    git
    sqlite
    nixd
    nixfmt-rfc-style
    gcc
    gnumake # These two can be redundant
    uv
    rustup # Impure piece of shit
    mininet # For Research purposes only
    typst
    python313
    jupyter
   (python3.withPackages (ps: with ps; [ ]))

    # Hyprland
    waybar
    mako
    libnotify
    hyprshot
    rofi
    wl-clipboard

    # Sound
    qjackctl
    pulsemixer

    (emacsWithDoom {
      doomDir = inputs.doom-config;  # must be an absolute path here
      doomLocalDir = "/home/erf/.local/share/nix-doom";
    })
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
    hyperfine
    proxychains
    zellij

    # General apps
    alacritty
    # hiddify-app
    zathura
    imv
    mpv
    firefox
    brave # PURGE
    telegram-desktop # USE WEB VERSION
    android-file-transfer
    localsend
    wireshark
    # musescore
    
   # Gaming
   pcsx2
  ];

  fonts.packages = with pkgs; [ ir-standard-fonts ];
}
