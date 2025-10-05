{ pkgs, ... }:
{
  programs.alacritty = {
    enable = true;
    package = pkgs.alacritty;
    theme = "ashes_dark";
  };
}
