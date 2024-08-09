{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    #  colorschemes.catppuccin = {
    #    enable = true;
    #    settings.flavour = "mocha";
    #  };

    plugins = {

      lualine.enable = true;

      oil.enable = true;

      #  barbar = {
      #    enable = true;
      #  };

      bufferline = {
        enable = true;
      };

      cmp = {
        enable = true;
      };

      #  which-key = {
      #    enable = true;
      #  };

      telescope = {
        highlightTheme = null;
      };

      oil = {
        #  enable = true;
      };

      neogit = {
        enable = true;
      };

      neorg = {
        # enable = true;
      };

      comment = {
        enable = true;
      };

      lspkind = {
        enable = true;
      };

      notify = {
        enable = true;
        fps = 60;
        timeout = 2500;
      };

      fzf-lua = {
        enable = true;
      };

      toggleterm = {
        enable = true;
        settings.direction = "float";
      };

      auto-save.enable = true;

      treesitter = {
        enable = true;
        nixvimInjections = true;
        folding = true;
        settings.indent.enable = true;
      };

      treesitter-refactor = {
        enable = true;
        highlightDefinitions = {
          enable = true;
          clearOnCursorMove = false;
        };
      };

      nvim-tree = {
        enable = true;
        openOnSetupFile = true;
        autoReloadOnWrite = true;
      };

      hmts.enable = true;

      lsp = {
        enable = true;
        servers = {
          # python3
        };
      };

      mini = {
        enable = true;

        modules = {
          align = {};
          basics.options.extra_ui = true;
          clue = {};
          cursorword = {};
          doc = {};
          extra = {};
          indentscope = {};
          trailspace = {};
          misc = {};
          surround = {};
        };
      };

      illuminate = {
        enable = true;
        delay = 5;
        underCursor = true;
      };

      neo-tree = {
        enable = true;
        filesystem.followCurrentFile.enabled = true;
        closeIfLastWindow = true;
      };

      flash = {
        enable = true;
      };

      nix.enable = true;

      telescope = {
        enable = true;

        settings.defaults = {
          file_ignore_patterns = [
            "^.git/"
            "^.mypy_cache/"
            "^__pycache__/"
            "^output/"
            "^data/"
            "%.ipynb"
          ];
          set_env.COLORTERM = "truecolor";
        };
      };
    };

    globals.mapleader = " ";
    keymaps = [
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

    clipboard.providers.wl-copy.enable = true;
    clipboard.register = "unnamedplus";

    opts = {
      updatetime = 100; # Faster completion

      relativenumber = true; # Relative line numbers
      number = true; # Display the absolute line number of the current line

      hidden = true; # Keep closed buffer open in the background

      mouse = "a"; # Enable mouse control
      mousemodel = "extend"; # Mouse right-click extends the current selection

      splitbelow = true; # A new window is put below the current one
      splitright = true; # A new window is put right of the current one

      swapfile = false; # Disable the swap file

      modeline = true; # Tags such as 'vim:ft=sh'
      modelines = 100; # Sets the type of modelines

      undofile = true; # Automatically save and restore undo history

      incsearch = true; # Incremental search: show match for partly typed search command

      inccommand = "nosplit"; # Search and replace: preview changes in quickfix list
      ignorecase = true; # When the search query is lower-case, match both lower and upper-case
      smartcase = true; # Override the 'ignorecase' option if the search pattern contains upper

      scrolloff = 5; # Number of screen lines to show around the cursor

      cursorline = false; # Highlight the screen line of the cursor
      cursorcolumn = false; # Highlight the screen column of the cursor
      signcolumn = "yes"; # Whether to show the signcolumn
      colorcolumn = "100"; # Columns to highlight

      laststatus = 3; # When to use a status line for the last window

      fileencoding = "utf-8"; # File-content encoding for the current buffer

      termguicolors = true; # Disables 24-bit RGB color in the |TUI|

      spell = false; # Highlight spelling mistakes (local to window)
      wrap = false; # Prevent text from wrapping

      tabstop = 4; # Number of spaces a <Tab> in the text stands for (local to buffer)
      shiftwidth = 4; # Number of spaces used for each step of (auto)indent (local to buffer)
      expandtab = true; # Expand <Tab> to spaces in Insert mode (local to buffer)
      autoindent = true; # Do clever autoindenting

      textwidth = 0; # Maximum width of text that is being inserted.  A longer line will be

      foldlevel = 99; # Folds with a level higher than this number will be closed

     # completeopt = ["menu" "menuone" "noselect"]; # For CMP plugin
    };
  };
}
