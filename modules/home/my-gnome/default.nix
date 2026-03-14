{
  pkgs,
  lib,
  config,
  ...
}:

with lib;
let
  cfg = config.my-gnome;
in
{
  options.my-gnome = {
    enable = mkEnableOption "Enable wm-style design config for GNOME";
  };

  config = mkIf cfg.enable {

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
      gnomeExtensions.window-is-ready-remover
      gnomeExtensions.tray-icons-reloaded
      gnomeExtensions.status-icons
      gnome-tweaks
      adwaita-qt
      adwaita-icon-theme
      cava
      refine
      dconf2nix
    ];
  };
}
