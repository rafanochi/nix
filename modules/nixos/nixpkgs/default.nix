{ inputs, config, ... }:

{
  nix = {
    enable = true;
    settings.experimental-features = [ "nix-command" "flakes" ];
  };

  # nixpkgs.config = {
  #   packageOverrides = pkgs: {
  #     unstable = import inputs.unstable { config = config.nixpkgs.config; };
  #   };
  # };
}
