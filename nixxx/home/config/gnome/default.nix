{ pkgs, ... }:

{
  imports = [
    ./dconf.nix
  ];

  # qt.enable = true;
  # qt.platformTheme = "gnome";
  # qt.style = "adwaita";

  home.packages = with pkgs; [
    gnomeExtensions.user-themes
    gnomeExtensions.dash-to-dock
    gnomeExtensions.appindicator
    gnomeExtensions.blur-my-shell
    gnome-tweaks
    adwaita-qt
    adwaita-icon-theme
  ];
}
