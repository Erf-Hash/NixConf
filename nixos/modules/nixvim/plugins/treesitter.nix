{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    nixvimInjections = true;
    folding = true;
    settings.indent.enable = true;
  };

  programs.nixvim.plugins.treesitter-refactor = {
    enable = true;
    highlightDefinitions = {
      enable = true;
      clearOnCursorMove = false;
    };
  };
}
