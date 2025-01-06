{
    programs.nixvim.plugins.lsp = {
        enable = true;
        servers = {
            html = {
              enable = true;
            };
            lua_ls = {
              enable = true;
            };
            nil_ls = {
              enable = true;
            };
            marksman = {
              enable = true;
            };
            pyright = {
              enable = true;
            };
            yamlls = {
              enable = true;
            };
        };
    };
    
    programs.nixvim.plugins.lspkind = {
        enable = true;
    };

    programs.nixvim.plugins.lsp-format = {
        enable = true;
    };
}
