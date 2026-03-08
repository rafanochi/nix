{ pkgs, ... }:

{
  services = {
    displayManager.gdm.enable = true;
    # displayManager.lightdm.enable = true;
    desktopManager.gnome.enable = true;
    # desktopManager.cinnamon.enable = true;

    gnome = {
      core-developer-tools.enable = true;
      games.enable = false;
    };

    xserver = {
      enable = true;
      xkb.layout = "us,ru";
      xkb.options = "ctrl:swapcaps,grp:alt_shift_toggle";
    };
  };
}
