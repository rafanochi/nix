{ config, lib, nixpkgs, ... }: { services.xserver.videoDrivers = [ "nvidia" ];
  # Enable OpenGL
  hardware.graphics = { enable = true; };

  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    nvidiaSettings = true;
    powerManagement.enable = false;
    # powerManagement.finegrained = false;
    # package = config.boot.kernelPackages.nvidiaPackages.stable;
    package = config.boot.kernelPackages.nvidiaPackages.stable; # Older versions

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

