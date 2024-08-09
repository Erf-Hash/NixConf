{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    wget
    alacritty
    kitty
    git
    mpv
    btop
    tmux
    zsh
    starship
    waybar
    mako
    libnotify
    hyprpaper
    rofi-wayland
    zathura
    ripgrep
    eza
    brave
    fzf
    bat
    wl-clipboard
    file
    imv
  ];


  fonts.packages = with pkgs; [
    nerdfonts
    jetbrains-mono
  ];
}
