{ config, ... }:

{
    programs.nushell = {
        enable = true;
        configFile.text = ''
                $env.config.show_banner = false
        '';


    shellAliases = {
        cat = "bat";
            # grep = "rg";
        vi = "nvim";
        top = "btop";
    };

#    history.size = 10000;
#    history.path = "${config.xdg.dataHome}/zsh/history";

  };
}
