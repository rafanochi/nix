{ pkgs, ... }:

{

  programs.dconf.enable = true;
  environment.systemPackages = with pkgs; [
    gnome.adwaita-icon-theme
    gnomeExtensions.user-themes
    gnomeextensions.dash-to-dock
    gnomeextensions.appindicator
    gnomeextensions.blur-my-shell
    gnomeextensions.window-title-is-back
    gnomeextensions.runcat
    gnomeextensions.soundbar
    gnomeextensions.in-picture
    gnomeextensions.media-progress
    gnomeextensions.tray-icons-reloaded
    gnomeextensions.color-picker
    gnomeextensions.space-bar
    gnomeextensions.date-menu-formatter
    gnomeextensions.window-is-ready-remover
    gnomeextensions.tray-icons-reloaded
    gnomeextensions.status-icons
    gnome-tweaks
    adwaita-qt
    adwaita-icon-theme
    cava
    refine
    dconf2nix
  ];
  environment.variables = {
    GSK_RENDERER = "ngl";
  };

  services = {
    displayManager.gdm.enable = true;
    # displayManager.lightdm.enable = true;
    desktopManager.gnome.enable = true;
    # desktopManager.cinnamon.enable = true;

    gnome = {
      core-developer-tools.enable = true;
      games.enable = false;
    };
    sysprof.enable = true;
    udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
    dbus.packages = with pkgs; [ gnome2.GConf ];


    xserver = {
      enable = true;
      xkb.layout = "us,ru";
      xkb.options = "ctrl:swapcaps,grp:alt_shift_toggle";
    };
  };
}
