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
    ubuntu-themes
    adwaita-qt
    adwaita-icon-theme
    apostrophe
    cartridges
    curtail
    gnome-themes-extra
    video-trimmer
    fragments
    komikku
    foliate
    morphosis
    gnome-terminal
    letterpress
  ];
}
