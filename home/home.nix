{ pkgs, zen-browser, lib, unstable-pkgs, ... }:

let configModules = import ./config;
in {
  imports = [
    configModules.zsh
    configModules.git
    configModules.vscode
    configModules.wezterm
    # configModules.i3wm
    # configModules.gnome
    # configModules.haskell
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
    # unstable-pkgs.telegram-desktop
  ];

  home.keyboard.options = [ "ctrl:swapcaps" ];

  xdg.enable = true;
  xdg.mime.enable = true;

  home.activation.linkDesktopApps = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p "$HOME/.local/share/applications"
    for f in $HOME/.nix-profile/share/applications/*.desktop; do
      ln -sf "$f" "$HOME/.local/share/applications/$(basename "$f")"
    done
  '';
}
