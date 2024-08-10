{
    programs.nixvim.plugins.conform-nvim = {
        enable = true;
        notifyOnError = true;
        
        formatOnSave = {
            lspFallback = true;
            timeoutMs = 500;
        };

        formattersByFt = {
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
