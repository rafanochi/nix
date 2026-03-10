{ ... }:

{
  programs.i3status = {
    enable = true;
    general = {
      interval = 1;
      colors = true;
      color_good = "#FFFFFF";
      color_degraded = "#ffd75f";
      color_bad = "#d75f5f";
    };

    modules = {
      "volume master" = {
        position = 1;
        settings = {
          format = "🔊 %volume ";
          format_muted = "🔇 %volume ";
          device = "default";
          mixer = "Master";
          mixer_idx = 0;
        };
      };

      "disk /" = {
        position = 2;
        settings = { format = "ROOT %avail "; };
      };

      "disk /home" = {
        position = 3;
        settings = { format = "HOME %avail "; };
      };

      "cpu_usage" = {
        position = 4;
        settings = { format = "CPU %usage "; };
      };

      "memory" = {
        position = 5;
        settings = { format = "Mem %used / %total "; };
      };

      "load" = {
        position = 6;
        settings = { format = "Load %5min "; };
      };

      "tztime local" = {
        position = 7;
        settings = { format = " %Y-%m-%d %H:%M:%S "; };
      };

      "battery 0" = {
        position = 8;
        settings = {
          format = "%status %percentage ";
          format_down = " DOWN ";
          status_chr = " CHARGING ";
          status_bat = " BATTERY ";
          status_unk = " UNKNOWN ";
          status_full = " FULL ";
          path = "/sys/class/power_supply/BAT%d/uevent";
        };
      };
    };
  };
}
