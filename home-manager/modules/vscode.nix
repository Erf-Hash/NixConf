{ pkgs, ... }:

{
    programs.vscode = {
        enable = true;
        extensions = with pkgs.vscode-extensions; [
            vscodevim.vim
            yzhang.markdown-all-in-one
            ms-python.python
            ms-toolsai.jupyter
        ];
    };
}
