{ config, ... }:

{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;
    

    shellAliases = {
        cp = "cp -i";
        mv = "mv -i";
        rm = "trash -iv";
        mkdir = "mkdir -p";
        ls = "eza --icons";
        cat = "bat";
        grep = "rg";
        vim = "nvim";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

  };
}
