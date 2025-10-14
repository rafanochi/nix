{ ... }:
{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "shahruz" ];
  users.users.shahruz.extraGroups = [ "libvirtd" ];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
