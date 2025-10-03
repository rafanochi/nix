{pkgs, lib, config, ...}: 

{
  imports = [
    # ./nvidia.nix
    ./steam.nix
    ./configuration.nix
    ./hardware-configuration.nix
  ];
}
