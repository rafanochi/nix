{ config, lib, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];
  # Enable OpenGL
   hardware = {
    # GPU (Nvidia)
    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      open = true;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.latest;
    };
  };

  # hardware.nvidia.prime = {
  #   # offload = {
  #   #   enable = true;
  #   #   enableOffloadCmd =
  #   #     true; # Lets you use `nvidia-offload %command%` in steam
  #   # };

  #   # sync.enable = true;
  #   intelBusId = "PCI:00:02:0";
  #   nvidiaBusId = "PCI:01:00:0";
  # };
}
