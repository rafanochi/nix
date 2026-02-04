{ pkgs, ... }: {
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "shahruz" ];
  users.users.shahruz.extraGroups = [ "libvirtd" ];
  virtualisation.spiceUSBRedirection.enable = true;

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      # ovmf = {
      #   enable = true;
      #   packages = [
      #     (pkgs.OVMF.override {
      #       secureBoot = true;
      #       tpmSupport = true;
      #     }).fd
      #   ];
      # };
    };
  };

  environment.systemPackages = with pkgs; [
    quickemu
    (pkgs.writeShellScriptBin "qemu-system-x86_64-uefi" ''
      qemu-system-x86_64 \
        -bios ${pkgs.OVMF.fd}/FV/OVMF.fd \
        "$@"
    '')
  ];

  # networking.firewall.trustedInterfaces = [ "virbr0" ];

}
