{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      yzhang.markdown-all-in-one
      ms-vscode.cpptools-extension-pack
      ms-vscode.cpptools
      ms-python.python
      ms-python.black-formatter
      ms-toolsai.jupyter
      jnoortheen.nix-ide
      rust-lang.rust-analyzer
    ];

    userSettings = {
      "editor.formatOnSave" = true;
      "editor.tabSize" = 4;
      "editor.insertSpaces" = true;
      "vim.useSystemClipboard" = true;
      "telemetry.enableTelemetry" = false;
      "window.menuBarVisibility" = "hidden";
      "files.autoSave" = "afterDelay";
      "files.autoSaveDelay" = 100;
      "[python]" = {
        "editor.defaultFormatter" = "ms-python.black-formatter";
      };
      "editor.codeActionsOnSave" = {
        "source.fixAll" = true;
        "source.organizeImports" = true;
      };

      "nix.enableLanguageServer" = "true";
      "nix.serverPath" = "nixd";
    };
  };
}
