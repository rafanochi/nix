{ pkgs, inputs, ... }:
{
  # Bootloader.
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [ "usbcore.autosuspend=-1" ];

    loader = {
      # After going back to bootloader, run this:
      # nixos-rebuild switch --install-bootloader
      systemd-boot.enable = false;
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        efiSupport = true;
        useOSProber = true;
        devices = [ "nodev" ];
        extraConfig = ''
          GRUB_DISABLE_OS_PROBER=false
        '';
        theme = "${
          (pkgs.fetchFromGitHub {
            owner = "xinux-org";
            repo = "bootloader-theme";
            tag = "v1.0.3";
            hash = "sha256-ipaiJiQ3r2B3si1pFKdp/qykcpaGV+EqXRwl6UkCohs=";
          })
        }/xinux";
      };
    };
    plymouth = {
      enable = true;
      theme = "mac-style";
      themePackages = [
        inputs.mac-style-plymouth.packages."${pkgs.stdenv.hostPlatform.system}".default
      ];
    };
    # consoleLogLevel = 3;
    # initrd.systemd.enable = true;
    # initrd.verbose = false;
  };
}
