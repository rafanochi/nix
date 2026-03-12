{ inputs, config, ... }:

{
  nix = {
    enable = true;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
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
