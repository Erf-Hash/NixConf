{ pkgs, ...}:
{
  programs.nvf = {
    enable = true;
    
    settings.vim = {
      theme.enable = true;
      theme.name = "catppuccin";
      theme.style = "mocha";

      statusline.lualine.enable = true;
      telescope.enable = true;
      autocomplete.nvim-cmp.enable = true;
      
      languages = {
        enableLSP = true;
        enableTreesitter = true;
        python.enable = true;
        nix.enable = true;
        rust.enable = true;
      };
    };
  };
}