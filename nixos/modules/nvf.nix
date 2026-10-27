{ pkgs, ... }:
{
  programs.nvf = {
    enable = true;

    settings.vim = {
      # theme.enable = true;
      # theme.name = "catppuccin";
      # theme.style = "mocha";

      lazy.plugins = {
        "aerial.nvim" = {
          package = pkgs.vimPlugins.aerial-nvim;

          setupModule = "aerial";
          setupOpts = {
            option_name = false;
          };
        };
      };

      clipboard.enable = true;
      clipboard.providers.wl-copy.enable = true;
      clipboard.registers = "unnamedplus";

      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;

      lsp.enable = true;
      languages = {
        enableTreesitter = true;
        python.enable = true;
        python.format.enable = true;
        nix.enable = true;
        rust.enable = true;
      };
    };
  };
}
