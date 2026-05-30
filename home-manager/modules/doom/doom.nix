{ doom-emacs, ... }:

{
  imports = [
    doom-emacs
  ];

  programs.doom-emacs = {
    enable = false; # Has some weird bugs. Keep it disabled for now
    doomDir = ./.; 
  };
}
