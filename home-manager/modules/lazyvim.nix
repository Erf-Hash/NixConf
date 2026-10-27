{
    programs.lazyvim = {
        enable = true;

        extras = {
            lang.nix.enable = true;
            lang.python = {
                enable = true;
                installDependencies = true; # Install ruff
                installRuntimeDependencies = true; # Install python3
            };
        };
        plugins = {
            colorscheme = ''
                return {
                  "catppuccin/nvim",
                  opts = { flavour = "mocha" },
                }
            '';
        };

    };
}
