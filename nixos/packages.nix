{ pkgs, pkgs-stable, ... }:
{

  environment.systemPackages = with pkgs; [
    # Development
    git
    sqlite
    nixd
    nixfmt
    gcc
    gnumake # These two can be redundant
    uv
    rustup # Impure piece of shit
    mininet #or Research purposes only
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

    # Command-line utils
    aria2
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
    rar

    # General apps
    alacritty
    #hiddify-app
    zathura
    imv
    mpv
    firefox
    brave 
    telegram-desktop 
    android-file-transfer
    localsend
    wireshark
    # musescore
    
   # Gaming
   pcsx2
   mangohud
   protonup-rs
   gamescope
                #pkgs-stable.lutris-free # Change this back to unstable once the errors are fixed
                #wineWow64Packages.stable
                #vulkan-tools
   #vkbasalt
   #DXVK 
   #VKD3D
  ];

  fonts.packages = with pkgs; [ ir-standard-fonts ];
}
