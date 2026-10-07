{ pkgs, pkgs-stable, ... }:
{

  environment.systemPackages = with pkgs; [
    # Development
    git
    sqlite
    (llama-cpp.override { vulkanSupport = true; })    
    nixd
    nixfmt
    gcc
    gdb
    gnumake # These two can be redundant
    uv
    rustup # Impure piece of shit
    mininet #or Research purposes only
    python313
    jupyter
   (python3.withPackages (ps: with ps; [ debugpy numpy pandas matplotlib ]))


    typst
    (texliveGUST.withPackages (ps: with ps; [ xypic supertabular xepersian arydshln multirow tocbibind xepersian bidi zref tcolorbox pdfcol upquote adjustbox ]))
    texliveGUST

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
                # lutris
                #wineWow64Packages.stable
                #vulkan-tools
   #vkbasalt
   #DXVK 
   #VKD3D
  ];

  fonts.packages = with pkgs; [ ir-standard-fonts ];
}
