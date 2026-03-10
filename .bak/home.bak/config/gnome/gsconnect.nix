{ pkgs, ... }:

{
  services.kdeconnect.enable = true;

  programs.gnome-shell = {
    enable = true;
    extensions = [{ package = pkgs.gnomeExtensions.gsconnect; }];
  };

}
