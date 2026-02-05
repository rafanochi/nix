{ pkgs, lib, config, ... }:

{
  imports = [
    ./nvidia.nix
    ./configuration.nix
    ./hardware-configuration.nix
    ./steam.nix
    ./kvm.nix
    ./disko.nix
    # ./kde.nix
  ];
}
