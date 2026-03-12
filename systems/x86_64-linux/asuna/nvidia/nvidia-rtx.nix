{ config, pkgs, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];
  # Enable OpenGL
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      mesa
      libvdpau
      libva-vdpau-driver
      libva
      vulkan-loader
      vulkan-validation-layers
    ];
  };

  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    nvidiaSettings = true;
    nvidiaPersistenced = false;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    dynamicBoost.enable = false;
    # package = config.boot.kernelPackages.nvidiaPackages.stable;
    # package = config.boot.kernelPackages.nvidiaPackages.stable; # Older versions
    package = config.boot.kernelPackages.nvidiaPackages.latest;
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
