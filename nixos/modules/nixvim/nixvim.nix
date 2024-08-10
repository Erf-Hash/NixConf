{
  imports = [
    ./keymaps.nix
    ./opts.nix

    ./plugins/auto-save.nix
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/comment.nix
    ./plugins/conform.nix
    ./plugins/flash.nix
    ./plugins/fzf-lua.nix
    ./plugins/hmts.nix
    ./plugins/illuminate.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/mini.nix
    ./plugins/neo-tree.nix
    ./plugins/neogit.nix
    ./plugins/neorg.nix
    ./plugins/notify.nix
    ./plugins/nvim-tree.nix
    ./plugins/oil.nix
    ./plugins/telescope.nix
    ./plugins/toggleterm.nix
    ./plugins/treesitter.nix
    ./plugins/trouble.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;


    globals.mapleader = " ";

    clipboard.providers.wl-copy.enable = true;
    clipboard.register = "unnamedplus";

  };
}
