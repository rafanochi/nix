{ config, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];
  # Enable OpenGL
  hardware.graphics = { enable = true; };

  hardware.nvidia = {
    open = false;
    modesetting.enable = true;
    nvidiaSettings = true;
    powerManagement.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };

  hardware.nvidia.prime = {
    offload = {
      enable = true;
      enableOffloadCmd =
        true; # Lets you use `nvidia-offload %command%` in steam
    };

    intelBusId = "PCI:00:02:0";
    nvidiaBusId = "PCI:01:00:0";
  };
}

