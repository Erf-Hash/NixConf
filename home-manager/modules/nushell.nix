{ config, ... }:

{
    programs.nushell = {
        enable = true;


    shellAliases = {
        cp = "cp -i";
        mv = "mv -i";
        rm = "trash -iv";
        ls = "eza --icons";
        cat = "bat";
        grep = "rg";
        vi = "nvim";
        du = "dust";
    };

#    history.size = 10000;
#    history.path = "${config.xdg.dataHome}/zsh/history";

  };
}
