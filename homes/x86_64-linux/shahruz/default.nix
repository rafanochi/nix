{ lib, ... }:

{
  config = {
    home.stateVersion = "25.11";
    home.username = "shahruz";

    home.keyboard.options = [ "ctrl:swapcaps" ];

    xdg.enable = true;
    xdg.mime.enable = true;

    home.activation.linkDesktopApps =
      lib.hm.dag.entryAfter [ "writeBoundary" ] ''
        mkdir -p "$HOME/.local/share/applications"
        for f in $HOME/.nix-profile/share/applications/*.desktop; do
          ln -sf "$f" "$HOME/.local/share/applications/$(basename "$f")"
        done
      '';

    # home.file.".zen/*/search.json.mozlz4".force = true;

    # Let's enable home-manager
    programs.home-manager.enable = true;
  };
}
