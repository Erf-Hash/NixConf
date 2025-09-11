{ pkgs, firefox-addons, ... }:
{
  programs.firefox = {
    enable = true;
    profiles.default = {

      search.engines = {
        "Nix Packages" = {
          urls = [
            {
              template = "https://search.nixos.org/packages";
              params = [
                {
                  name = "type";
                  value = "packages";
                }
                {
                  name = "query";
                  value = "{searchTerms}";
                }
              ];
            }
          ];

          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@nix" ];
        };
      };
      search.force = true;
      search.default = "DuckDuckGo";
      search.privateDefault = "DuckDuckGo";

      bookmarks = [
        {
          name = "wikipedia";
          tags = [ "wiki" ];
          keyword = "wiki";
          url = "https://en.wikipedia.org/wiki/Special:Search?search=%s&go=Go";
        }
      ];

      settings = {
        "dom.security.https_only_mode" = true;
        "browser.download.panel.shown" = true;
        "browser.startup.page" = 0; # 0 means blank start page
        "browser.contentblocking.category" = "strict";
        "identity.fxaccounts.enabled" = false;
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true; # This is for enabling custom CSS
        "signon.rememberSignons" = false;
        "privacy.clearOnShutdown.cache" = true;
        "privacy.clearOnShutdown.cookies" = true;
        "privacy.clearOnShutdown.downloads" = true;
        "privacy.clearOnShutdown.formdata" = true;
        "privacy.resistFingerprinting" = true;
      };

      userChrome = (builtins.readFile ./userChrome.css);

      extensions = with firefox-addons.packages."x86_64-linux"; [
        bitwarden
        ublock-origin
        vimium
      ];
    };
  };
}
