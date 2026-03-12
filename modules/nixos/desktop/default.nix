{ pkgs, ... }:

{

  programs.dconf.enable = true;
  environment.systemPackages = with pkgs; [
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
    udev.packages = with pkgs; [ gnome-settings-daemon ];
    dbus.packages = with pkgs; [ gnome2.GConf ];

    xserver = {
      enable = true;
      xkb.layout = "us,ru";
      xkb.options = "ctrl:swapcaps,grp:alt_shift_toggle";
    };
  };
}
