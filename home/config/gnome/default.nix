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
    gnomeExtensions.window-title-is-back
    gnomeExtensions.runcat
    gnomeExtensions.soundbar
    gnomeExtensions.in-picture
    gnomeExtensions.media-progress
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.color-picker
    gnomeExtensions.space-bar
    gnomeExtensions.date-menu-formatter
    gnome-tweaks
    adwaita-qt
    adwaita-icon-theme
    cava
    refine
    dconf2nix
  ];
}
