{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    # Development 
    python3
    wget
    git

    # Hyprland
    waybar
    mako
    libnotify
    hyprpaper
    hyprshot
    rofi-wayland
    wl-clipboard

    # Command-line utils
    fzf
    bat
    eza
    btop
    tmux
    ripgrep
    file
    tldr
    zsh
    starship
    fastfetch

    # General apps
    alacritty
    zathura
    imv
    mpv    
    brave
    firefox
    jmtpfs
  ];


  fonts.packages = with pkgs; [
    nerdfonts
    jetbrains-mono
    ir-standard-fonts
  ];
}
