{ disks ? [ "/dev/nvme0n1" "/dev/sda" ], ... }: {
  disko.devices = {
    disk = {
      main = {
        device = builtins.elemAt disks 0;
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            BOOT = {
              size = "1000M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = [ "umask=0077" ];
              };
            };
            SWAP = {
              size = "32G";
              content = { type = "swap"; };
            };
            ROOT = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/";
              };
            };
          };
        };
      };
      storage = {
        device = builtins.elemAt disks 1;
        type = "disk";
        content = {
          type = "gpt";
          partitions = {
            MEDIA = {
              size = "900G";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/media";
              };
            };
            SERVER = {
              size = "100%";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/srv";
              };
            };
          };
        };
      };
    };
  };
}
