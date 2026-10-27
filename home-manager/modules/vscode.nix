{ pkgs, ... }:
{
    programs.vscode = {
        enable = true;

        profiles.default = {
            extensions = with pkgs.vscode-extensions; [
                vscodevim.vim
                yzhang.markdown-all-in-one
                ms-vscode.cpptools-extension-pack
                ms-vscode.cpptools
                ms-vscode.cmake-tools
                ms-python.python
                ms-python.black-formatter
                ms-toolsai.jupyter
                jnoortheen.nix-ide
                #        rust-lang.rust-analyzer
            ];

            userSettings = {
                "editor.formatOnSave" = true;
                "editor.tabSize" = 4;
                "editor.insertSpaces" = true;
                "C_Cpp.default.cppStandard" = "c++26";
                "C_Cpp.default.compileCommands" = "\${workspaceFolder}/.vscode/compile_commands.json";
                "vim.useSystemClipboard" = true;
                "telemetry.telemetryLevel" = "off";
                "window.menuBarVisibility" = "hidden";
                "files.autoSave" = "afterDelay";
                "files.autoSaveDelay" = 100;
                "[python]" = {
                    "editor.defaultFormatter" = "ms-python.black-formatter";
                };
                "editor.codeActionsOnSave" = {
                    "source.fixAll" = "explicit";
                    "source.organizeImports" = true;
                };

                "nix.enableLanguageServer" = true;
                "nix.serverPath" = "nixd";
            };
        };
    };
}
