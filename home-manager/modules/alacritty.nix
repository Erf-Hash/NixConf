{
  programs.alacritty = {
    enable = true;

    settings = {
      window = {
        blur = true;
      };

      cursor.style = {
        shape = "Beam";
        blinking = "On";
      };

      terminal.shell.program = "zellij";
      terminal.shell.args = [ "-l" "welcome" ];
    };
  };
}
