{ pkgs, inputs, ... }:
{
  # Bootloader.
  boot = {
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
