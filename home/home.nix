{ pkgs, zen-browser, ... }:

let
  configModules = import ./config;
in
{
  imports = [
    configModules.zsh
    configModules.gnome
    configModules.git
    configModules.wezterm
    configModules.haskell
    configModules.vscode
    # configModules.ideavim
    # configModules.alacritty
    # configModules.zed
    # configModules.helix
    # configModules.plasma
  ];

  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    zen-browser.packages."${system}".default
    handbrake
    nixfmt-classic
    nixd
    vlc
    neofetch
    git
    zsh
    starship
    zsh
    ripgrep
    wget
    curl
    xclip
    nixpkgs-fmt
    nerd-fonts.fira-code
    libsForQt5.qtcurve
  ];

  home.keyboard.options = [ "ctrl:swapcaps" ];

  home.file.".xprofile" = {
    source = pkgs.writeText "xprofile" ''
      setxkbmap -option ctrl:swapcaps
    '';
  };
}
