{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  time.timeZone = "Asia/Tashkent";

  # i18n = {
  #   supportedLocales = [ "en_US.UTF-8/UTF-8" "ru_RU.UTF-8/UTF-8" ];
  #   defaultLocale = "en_US.UTF-8";
  # };

  # services.printing.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.

  programs.zsh.enable = true;

  services.udisks2.enable = true;

  users.defaultUserShell = pkgs.zsh;

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_14;
    ensureDatabases = [
      "gardening"
      "postgres"
    ];
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

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [ aapt ];

  services.e-imzo.enable = true;

  programs.nix-data = {
    enable = true;
    systemconfig = "/home/shahruz/nix/config/nixos/configuration.nix";
    flake = "/home/shahruz/nix/flake.nix";
    flakearg = "tya";
  };

  # PHP
  # services.httpd.phpPackage = pkgs.php.buildEnv {
  #   extensions = ({ enabled, all }: enabled ++ (with all; [ xdebug ]));
  #   extraConfig = ''
  #     xdebug.mode=debug
  #   '';
  # };

  services.httpd = {
    enable = true;
    enablePHP = true;
    virtualHosts.default = {
      listen = [
        {
          ip = "*";
          port = 80;
        }
      ];
      documentRoot = "/var/www/page";
    };
  };

  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
  };

  systemd.tmpfiles.rules = [
    "d /var/www/page"
    "f /var/www/page/index.php - - - - <?php phpinfo();"
  ];

  system.activationScripts.nixvimSymlinks.text = ''
    mkdir -p /usr/local/bin
    ln -sf ${pkgs.neovim}/bin/nvim /usr/local/bin/vim
    ln -sf ${pkgs.neovim}/bin/nvim /usr/local/bin/vi
  '';
}
