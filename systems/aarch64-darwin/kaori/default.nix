{ lib, inputs, ... }:

{
  # Set Git commit hash for darwin-version.
  system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 6;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = lib.mkForce "aarch64-darwin";
  nixpkgs.config.allowUnsupportedSystem = lib.mkForce true;

  networking = {
    computerName = "kaori"; # Define your computer name.
    localHostName = "kaori"; # Define your local host name.
  };
}
