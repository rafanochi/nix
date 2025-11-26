{ pkgs, ... }:
{
  programs.ssh.askPassword = pkgs.lib.mkForce "${pkgs.kdePackages.ksshaskpass.out}/bin/ksshaskpass";
  environment.systemPackages = with pkgs;
    [
      # KDE
      kdePackages.kcalc # Calculator
      kdePackages.kcharselect # Tool to select and copy special characters from all installed fonts
      kdePackages.kclock # Clock app
      kdePackages.kcolorchooser # A small utility to select a color
      kdePackages.kolourpaint # Easy-to-use paint program
      kdePackages.ksystemlog # KDE SystemLog Application
      kdePackages.sddm-kcm # Configuration module for SDDM
      kdiff3 # Compares and merges 2 or 3 files or directories
      # Non-KDE graphical packages
      hardinfo2 # System information and benchmarks for Linux systems
      wayland-utils # Wayland utilities
      wl-clipboard # Command-line copy/paste utilities for Wayland

      whitesur-kde
      whitesur-cursors
      whitesur-gtk-theme
      whitesur-icon-theme
    ];

  environment.plasma6.excludePackages = with pkgs; [
    kdePackages.discover # Optional: Install if you use Flatpak or fwupd firmware update sevice
    kdePackages.elisa # Simple music player aiming to provide a nice experience for its users
    kdePackages.kdepim-runtime # Akonadi agents and resources
    kdePackages.kmahjongg # KMahjongg is a tile matching game for one or two players
    kdePackages.kmines # KMines is the classic Minesweeper game
    kdePackages.konversation # User-friendly and fully-featured IRC client
    kdePackages.kpat # KPatience offers a selection of solitaire card games
    kdePackages.ksudoku # KSudoku is a logic-based symbol placement puzzle
    kdePackages.ktorrent # Powerful BitTorrent client
    mpv
  ];


}
