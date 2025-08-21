{ ... }:
{
  programs.nvf = {
    enable = true;

    settings.vim = {
      theme.enable = true;
      theme.name = "catppuccin";
      theme.style = "mocha";

      clipboard.enable = true;

      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;

      lsp.enable = true;
      languages = {
        enableTreesitter = true;
        python.enable = true;
        nix.enable = true;
        rust.enable = true;
      };
    };
  };
}
