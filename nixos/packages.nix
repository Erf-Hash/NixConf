{ pkgs, ... }: {

    environment.systemPackages = with pkgs; [
    # Development
        git
        gcc
        python313Full
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
        trash-cli

        # General apps
        alacritty
        hiddify-app
        zathura
        imv
        mpv
        brave
        firefox
        telegram-desktop
        jmtpfs

    ];


    fonts.packages = with pkgs; [
        nerd-fonts._0xproto
        jetbrains-mono
        ir-standard-fonts
    ];
}
