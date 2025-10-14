{pkgs, lib, config, ...}: 

{
  imports = [
    # ./nvidia.nix
    # ./kde.nix
    ./steam.nix
    ./configuration.nix
    ./hardware-configuration.nix
    ./kvm.nix
  ];
}
