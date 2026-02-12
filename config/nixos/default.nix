{ pkgs, lib, config, ... }:

{
  imports = [
    # ./nvidia.nix
    ./nvidia-rtx.nix
    ./configuration.nix
    ./hardware-configuration.nix
    ./steam.nix
    ./kvm.nix
    # ./disko.nix
    # ./kde.nix
  ];
}
