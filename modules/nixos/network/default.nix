{ ... }:

{
  networking = {
    networkmanager.enable = true;
    nameservers = [ "1.1.1.1" "8.8.8.8" ];
    resolvconf.enable = false;

    firewall = {
      enable = true;
      allowedTCPPorts = [ 80 443 8888 5500 1003 ];
      allowedUDPPorts = [ 80 443 ];
    };
  };

  environment.etc."resolv.conf".text = ''
    nameserver 1.1.1.1
    nameserver 8.8.8.8
  '';

}
