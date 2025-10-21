{ pkgs, ... }:

let
  configModules = import ./config;
in
{
  imports = [
    configModules.zsh
    configModules.gnome
    configModules.git
    configModules.ideavim
    configModules.hyprland
    configModules.alacritty
    configModules.zed
    configModules.wezterm
    configModules.haskell
    configModules.vscode # vscode-ni lsp ko'rmayapti
    # configModules.helix
    # configModules.plasma
  ];

  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    wezterm
    emacs-gtk
    zellij
    nicotine-plus
    zed-editor
    spotify
    discord
    poppler
    vlc
    neofetch
    git
    zsh
    starship
    dconf2nix
    zsh
    ripgrep
    wget
    curl
    xclip
    nixpkgs-fmt
    nerd-fonts.fira-code
    cbonsai
    libsForQt5.qtcurve
  ];

  home.keyboard.options = [ "ctrl:swapcaps" ];

  home.file.".xprofile" = {
    source = pkgs.writeText "xprofile" ''
      setxkbmap -option ctrl:swapcaps
    '';
  };
}
