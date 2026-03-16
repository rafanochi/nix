{
  inputs,
  config,
  lib,
  ...
}:

{
  nix = {
    enable = true;
    # This will additionally add your inputs to the system's legacy channels
    # Making legacy nix commands consistent as well, awesome!
    nixPath = lib.mapAttrsToList (key: value: "${key}=${value.to.path}") config.nix.registry;

    settings = {
      # Enable flakes and new 'nix' command
      experimental-features = "nix-command flakes pipe-operators";

      # Extra cached servers
      substituters = [ "https://cache.xinux.uz/" ];

      # Signing keys used in cache servers
      trusted-public-keys = [
        "cache.xinux.uz:BXCrtqejFjWzWEB9YuGB7X2MV4ttBur1N8BkwQRdH+0="
      ];

      # Deduplicate and optimize nix store
      auto-optimise-store = true;

      # Enable IDF for the love of god
      allow-import-from-derivation = true;
    };
  };

  nixpkgs.config = {
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Lots of stuff that uses aarch64 that claims doesn't work, but actually works.
    nixpkgs.config.allowUnsupportedSystem = true;
    packageOverrides = pkgs: {
      unstable = import inputs.unstable { config = config.nixpkgs.config; };
    };
  };
}
