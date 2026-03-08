{ pkgs, firefox-addons, ... }:

{
  programs.zen-browser = {
    enable = true;
    nativeMessagingHosts = [ pkgs.firefoxpwa ];

    profiles."*" = {
      spacesForce = true;
      search.default = "ddg";
      spaces = {
        Default = {
          id = "c6de089c-410d-4206-961d-ab11f988d40a";
          name = "purple";
          position = 1000;
          theme = {
            type = "gradient";
            colors = [
              {
                red = 135;
                green = 69;
                blue = 124;
              }
              {
                red = 135;
                green = 69;
                blue = 69;
              }
              {
                red = 92;
                green = 70;
                blue = 134;
              }
            ];
          };
        };
      };

      extensions.packages =
        with firefox-addons.packages.${pkgs.stdenv.hostPlatform.system}; [
          ublock-origin
          keepassxc-browser
          vimium
        ];
    };
  };
}

