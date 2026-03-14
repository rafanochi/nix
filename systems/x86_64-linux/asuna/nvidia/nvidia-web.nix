{pkgs, config, lib, ...} :{



hardware = {
    graphics.enable = true;
    graphics.enable32Bit = true;
    graphics.extraPackages = with pkgs; [
      nvidia-vaapi-driver
      #intel-media-driver # Recommended only with Intel iGPU
    ];

    cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    intel-gpu-tools.enable = true;

    nvidia = {
      open = true; # Compatible with RTX 2080 Super and newer
      nvidiaSettings = true; # GUI tool for NVIDIA settings but useless on Wayland
      modesetting.enable = true; # Mandatory for Wayland
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      # https://github.com/NixOS/nixpkgs/blob/staging-25.05/pkgs/os-specific/linux/nvidia-x11/default.nix
      #package = config.boot.kernelPackages.nvidiaPackages.production; # "570.153.02"
      # https://github.com/NixOS/nixpkgs/blob/master/pkgs/os-specific/linux/nvidia-x11/default.nix
      package = config.boot.kernelPackages.nvidiaPackages.mkDriver {
        version = "580.76.05";
        sha256_64bit = "sha256-IZvmNrYJMbAhsujB4O/4hzY8cx+KlAyqh7zAVNBdl/0=";
        sha256_aarch64 = "sha256-NL2DswzVWQQMVM092NmfImqKbTk9VRgLL8xf4QEvGAQ=";
        openSha256 = "sha256-xEPJ9nskN1kISnSbfBigVaO6Mw03wyHebqQOQmUg/eQ=";
        settingsSha256 = "sha256-ll7HD7dVPHKUyp5+zvLeNqAb6hCpxfwuSyi+SAXapoQ=";
        persistencedSha256 = "sha256-bs3bUi8LgBu05uTzpn2ugcNYgR5rzWEPaTlgm0TIpHY=";
      };
    };
  }; 
}
