{
    programs.nixvim.keymaps = [
      {
        key = "<C-q>";
        action = "<CMD>ToggleTerm<CR>";
        options.desc = "Toggle NvimTree";
      }

      {
        key = "<C-b>";
        action = "<CMD>NvimTreeToggle<CR>";
        options.desc = "Toggle Tree";
      }

      {
        key = "<S-l>";
        action = "<Cmd>BufferLineCycleNext<CR>";
        options.desc = "Goto Next Buffer";
      }

      {
        key = "<S-h>";
        action = "<Cmd>BufferLineCyclePrev<CR>";
        options.desc = "Goto Previous Buffer";
      }

      {
       key = "s";
       action = "<cmd>lua require('flash').jump()<cr>";
       options.desc = "Flash";
      }
    ];
}
