{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    package = pkgs.alacritty;
    theme = "gruber_darker";
    settings = {
      font = {
        normal = {
          family = "FiraCode Nerd Font";
          style = "Regular";
        };
        size = 14.0;
      };
      window = {
        padding = { x = 1; y = 1; };
      };
    };
  };
}
