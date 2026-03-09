{
  lib,
  config,
  ...
}:
{
  imports = [
    # Note:
    # Uncomment for the first time,
    # it keeps installing over and over.
    # ./mas.nix
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      cleanup = "uninstall";
      upgrade = true;
    };

    brews = lib.optionals config.homebrew.enable [
      # "pkl"
      # "mas"
      "git-lfs"
    ];

    casks = lib.optionals config.homebrew.enable [
      # "anki"
      # "balenaetcher"
      "cleanmymac"
      "element"
      "iterm2"
      "gitfox"
      # "logitech-options"
      # "minecraft"
      # "nextcloud"
      # "obs"
      # "openscad"
      # "prismlauncher"
      # "raspberry-pi-imager"
      "sf-symbols"
      "zen"
      # "zulip"
    ];
  };
}
