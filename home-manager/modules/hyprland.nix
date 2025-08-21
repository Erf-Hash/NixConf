{
wayland.windowManager.hyprland = {
    enable = true;

    settings = {

      monitor = ",preferred,auto,auto";

      "$browser" = "firefox";
      "$terminal" = "alacritty";
      "$telegram" = "telegram-desktop";
      "$vscode" = "code";
      "$menu" = "rofi -show drun";

      exec-once = [
        "hyprpaper"
      ];

      env = [
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_SIZE,24"
      ];

      general = {
         gaps_in = 0;
         gaps_out = 0;
         border_size = 0;
         resize_on_border = false;
         allow_tearing = false;
         layout = "dwindle";
      };

      decoration = {
        rounding = 1;
        active_opacity = 1.0;
        inactive_opacity = 1.0;


        blur = {
            enabled = true;
            size = 3;
            passes = 1;
            vibrancy = 0.1696;
        };
      };
        animations = {
            enabled = true;
            "bezier" = "myBezier, 0.05, 0.9, 0.1, 1.05";
            animation = [
              "windows, 1, 7, myBezier"
              "windowsOut, 1, 7, default, popin 80%"
              "border, 1, 10, default"
              "borderangle, 1, 8, default"
              "fade, 1, 7, default"
              "workspaces, 1, 6, default"
            ];
        };

        dwindle = {
            pseudotile = true; # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
            preserve_split = true; # You probably want this
        };

        master = {
            new_status = "master";
        };

        misc = { 
            force_default_wallpaper = 1; # Set to 0 or 1 to disable the anime mascot wallpapers
            disable_hyprland_logo = true; # If true disables the random hyprland logo / anime girl background. :(
        };

        input = {
            kb_layout = "us";
            follow_mouse = 1;
            sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
            touchpad = {
                natural_scroll = false;
            };
        };
        gestures = {
            workspace_swipe = false;
        };
        device = {
            name = "epic-mouse-v1";
            sensitivity = -0.5;
        };

        "$mainMod" = "SUPER";

        bind = [
            "$mainMod, Q, exec, $terminal"
            "$mainMod, C, killactive,"
            "$mainMod, M, exit,"
        	"$mainMod, F, togglefloating,"
        	"$mainMod, O, exec, $menu"
        	"$mainMod, P, pseudo,"
        	"$mainMod, S, togglesplit,"
        	"$mainMod, B, exec, $browser"
            "$mainMod, T, exec, $telegram"
            "$mainMod, V, exec, $vscode"

        	"$mainMod, H, movefocus, l"
        	"$mainMod, L, movefocus, r"
        	"$mainMod, K, movefocus, u"
        	"$mainMod, J, movefocus, d"

        	"$mainMod, 1, workspace, 1"
        	"$mainMod, 2, workspace, 2"
        	"$mainMod, 3, workspace, 3"
        	"$mainMod, 4, workspace, 4"
        	"$mainMod, 5, workspace, 5"
        	"$mainMod, 6, workspace, 6"
        	"$mainMod, 7, workspace, 7"
        	"$mainMod, 8, workspace, 8"
        	"$mainMod, 9, workspace, 9"
        	"$mainMod, 0, workspace, 10"

        	"$mainMod SHIFT, 1, movetoworkspace, 1"
        	"$mainMod SHIFT, 2, movetoworkspace, 2"
        	"$mainMod SHIFT, 3, movetoworkspace, 3"
        	"$mainMod SHIFT, 4, movetoworkspace, 4"
        	"$mainMod SHIFT, 5, movetoworkspace, 5"
        	"$mainMod SHIFT, 6, movetoworkspace, 6"
        	"$mainMod SHIFT, 7, movetoworkspace, 7"
        	"$mainMod SHIFT, 8, movetoworkspace, 8"
        	"$mainMod SHIFT, 9, movetoworkspace, 9"
        	"$mainMod SHIFT, 0, movetoworkspace, 10"

        	"$mainMod, W, togglespecialworkspace, magic"
        	"$mainMod SHIFT, W, movetoworkspace, special:magic"

        	"$mainMod, mouse_down, workspace, e+1"
        	"$mainMod, mouse_up, workspace, e-1"

            "$mainMod, PRINT, exec, hyprshot --output-folder /home/erf/Media/Pictures/Screenshots -m window"
            ", PRINT, exec, hyprshot --output-folder /home/erf/Media/Pictures/Screenshots -m output"
            "$mainMod SHIFT, PRINT, exec, hyprshot --output-folder /home/erf/Media/Pictures/Screenshots -m region"
        ];

        bindm = [
            "$mainMod, mouse:272, movewindow"
            "$mainMod, mouse:273, resizewindow"
        ];

        windowrulev2 = "suppressevent maximize, class:.*";
      };
  };


  services.hyprpaper = {
    enable = true;

    settings = {
      splash = false;
    };
  };

}
