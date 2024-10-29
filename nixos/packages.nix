{ pkgs, ... }: {

    environment.systemPackages = with pkgs; [
    # Development 
        wget
        git
        gcc
        python312
        (python312.withPackages (ps: with ps; [
            pip
        ]))

        # Hyprland
        waybar
        mako
        libnotify
        hyprpaper
        hyprshot
        rofi-wayland
        wl-clipboard

        qjackctl
        pulsemixer

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
        zip
        unzip

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
