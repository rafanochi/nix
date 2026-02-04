{ pkgs, unstable-pkgs, lib, ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = false;

  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    useOSProber = true;
    device = "nodev"; # Required for EFI systems
    extraConfig = ''
      GRUB_DISABLE_OS_PROBER=false
    '';
  };
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelParams = [ "usbcore.autosuspend=-1" ];

  networking.hostName = "tya"; # Define your hostname.

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  networking.networkmanager.enable = true;
  networking.nameservers = [ "1.1.1.1" "8.8.8.8" ];
  networking.resolvconf.enable = false;
  environment.etc."resolv.conf".text = ''
    nameserver 1.1.1.1
    nameserver 8.8.8.8
  '';

  time.timeZone = "Asia/Tashkent";

  i18n = {
    supportedLocales = [ "en_US.UTF-8/UTF-8" "ru_RU.UTF-8/UTF-8" ];
    defaultLocale = "en_US.UTF-8";
  };

  # services.printing.enable = true;

  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;

  # environment.gnome.excludePackages = with pkgs; [
  #   gnome-tour
  #   gnome-user-docs
  #   gnome-maps
  #   gnome-weather
  #   gnome-clocks
  #   gnome-contacts
  #   gnome-music
  #   gnome-calendar
  #   gnome-text-editor
  #   gnome-characters
  #   simple-scan
  #   decibels
  #   geary
  #   totem
  #   snapshot
  #   xterm
  #   yelp
  #   xterm
  # ];

  environment.systemPackages = with pkgs; [
    unstable-pkgs.telegram-desktop
    discord
    powertop
    vscodium
    qbittorrent
    upscayl
    onlyoffice-desktopeditors
    obs-studio
    postman
    gimp
    ntfs3g
    udisks2
    gnome.gvfs
    os-prober
    noto-fonts-cjk-sans
    pciutils
  ];

  services.xserver = {
    enable = true;
    xkb.layout = "us,ru";
    xkb.options = "ctrl:swapcaps,grp:alt_shift_toggle";

  };
  services = {
    displayManager.gdm.enable = true;
    # displayManager.lightdm.enable = true;
    desktopManager.gnome.enable = true;
    # desktopManager.cinnamon.enable = true;
  };

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Enabling Bluetooth Support 
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
    settings = {
      General = {
        # Shows battery charge of connected devices on supported
        # Bluetooth adapters. Defaults to 'false'.
        Experimental = true;
        # When enabled other devices can connect faster to us, however
        # the tradeoff is increased power consumption. Defaults to
        # 'false'.
        FastConnectable = true;
      };
      Policy = {
        # Enable all controllers when they are found. This includes
        # adapters present on start as well as adapters that are plugged
        # in later on. Defaults to 'true'.
        AutoEnable = true;
      };
    };
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.shahruz = {
    isNormalUser = true;
    description = "Shahruz Norimmatov";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs;
      [
        #  thunderbird
      ];
  };

  programs.zsh.enable = true;
  programs.dconf.enable = true;

  services.udisks2.enable = true;

  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 80 443 ];
  };

  services.udev.packages = [ pkgs.gnome-settings-daemon ];
  users.defaultUserShell = pkgs.zsh;

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_14;
    ensureDatabases = [ "gardening" "postgres" ];
    enableTCPIP = true;
    authentication = pkgs.lib.mkOverride 10 ''
      local all      all                    trust
      host  all      all     127.0.0.1/32   trust
      host  all      all     ::1/128        trust
    '';
    initialScript = pkgs.writeText "gardening-initScript" ''
      CREATE ROLE gardening_user WITH LOGIN PASSWORD 'G&(69qaklsjdb' CREATEDB;
      GRANT ALL PRIVILEGES ON DATABASE gardening TO gardening_user;
    '';
  };

  systemd.services.powertop = {
    description = "powertop";
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.powertop}/bin/powertop --auto-tune";
    };
  };

  system.stateVersion = "25.11"; # Did you read the comment?
}
