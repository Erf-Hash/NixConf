{ pkgs, ...}:
{
  programs.nvf = {
    enable = true;
    
    #statusline.lualine.enable = true;
    #telescope.enable = true;
    #autocomplete.nvim-cmp.enable = true;

    # vim.languages = {
    #   enableLSP = true;
    #   enableTreesitter = true;

    #   nix.enable = true;
    #   python.enable = true;
    #   sql.enable = true;
    # };
  };
}