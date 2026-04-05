{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    webkitgtk_4_1
    element-desktop
    php
    unstable.telegram-desktop
    unstable.nix-sweep
    discord
    powertop
    vscodium
    qbittorrent
    # upscayl
    # onlyoffice-desktopeditors
    obs-studio
    # postman
    gimp
    ntfs3g
    udisks2
    gnome.gvfs
    os-prober
    noto-fonts-cjk-sans
    pciutils

    # was in home-manager
    element-web
    fractal
    github-desktop
    # zoom-us
    keepassxc
    # protonvpn-gui
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
    libsForQt5.qtcurve

    cloudflare-warp

    emacs

    droidcam
    obs-studio-plugins.droidcam-obs
    android-tools

    webkitgtk_4_1
    openscad
  ];
}
