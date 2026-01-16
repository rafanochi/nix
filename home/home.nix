{ pkgs, zen-browser, lib, unstable-pkgs, ... }:

let configModules = import ./config;
in {
  imports = [
    zen-browser.homeModules.default
    configModules.zsh
    configModules.git
    configModules.vscode
    configModules.wezterm
    configModules.gnome
    configModules.zed
    configModules.zen
    configModules.keepassxc
    # configModules.i3wm
    # configModules.haskell
    # configModules.ideavim
    # configModules.alacritty
    # configModules.helix
    # configModules.plasma
  ];

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    keepassxc
    protonvpn-gui
    zellij
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
