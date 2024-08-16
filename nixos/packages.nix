{ pkgs, ... }: {

    environment.systemPackages = with pkgs; [
    # Development 
        wget
        git
        python312
        python312Packages.jupyter
        (python311.withPackages (ps: with ps; [
            pip
            notebook
            numpy
            pandas
            scikit-learn
            seaborn
            matplotlib
        ]))

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
