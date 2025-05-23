{ config, ... }:

{
    programs.nushell = {
        enable = true;


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
