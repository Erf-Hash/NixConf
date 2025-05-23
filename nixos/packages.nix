{ pkgs, ... }: {

    environment.systemPackages = with pkgs; [
    # Development
        git
        sqlite
        gcc
        python313
        uv
        (python313.withPackages (ps: with ps; [
        ]))

        # Hyprland
        waybar
        mako
        libnotify
        hyprpaper
        hyprshot
        rofi-wayland
        wl-clipboard

        # Sound
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
        starship
        fastfetch
        zip
        unzip
        trash-cli
        proxychains
        traceroute

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

    ];


    fonts.packages = with pkgs; [
        nerd-fonts._0xproto
        jetbrains-mono
        ir-standard-fonts
    ];
}
