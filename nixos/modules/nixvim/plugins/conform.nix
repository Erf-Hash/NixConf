{
    programs.nixvim.plugins.conform-nvim = {
        enable = true;
        settings.notify_on_error = true;

        settings.format_on_save = {
            lspFallback = true;
            timeoutMs = 500;
        };

        settings.formatters_by_ft = {
            html = [ "prettierd" ];
            css = [ "prettierd" ];
            javascript = [ "prettierd" ];
            typescript = [ "prettierd" ];
            markdown = [ "prettierd" ];
            python = [ "black" ];
            lua = [ "stylua" ];
            nix = [ "nixfmt" ];
            yaml = [ "yamllint" ];
        };
    };
}
