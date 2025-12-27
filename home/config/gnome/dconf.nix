# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "com/github/Ory0n/Resource_Monitor" = {
      cpustatus = false;
      diskdeviceslist = [ "devtmpfs /dev false false devtmpfs" "/dev/nvme0n1p7 / false false /dev/nvme0n1p7" "efivarfs /sys/firmware/efi/efivars false false efivarfs" "/dev/nvme0n1p5 /boot false false /dev/nvme0n1p5" ];
      diskshowdevicename = false;
      diskspacestatus = false;
      diskstatsstatus = false;
      gpudeviceslist = [ "GPU-810b1cb6-83a1-d4ad-d7cb-179f88252b62:NVIDIA GeForce GTX 1050:false:false:NVIDIA GeForce GTX 1050" ];
      netethcolors = [];
      netwlanstatus = false;
      ramcolors = [];
      rammonitor = "used";
      ramunit = "perc";
      ramunitmeasure = "g";
      thermalcputemperaturedeviceslist = [ "coretemp: Package id 0-false-/sys/class/hwmon/hwmon4/temp1_input" "coretemp: Core 0-false-/sys/class/hwmon/hwmon4/temp2_input" "coretemp: Core 1-false-/sys/class/hwmon/hwmon4/temp3_input" "coretemp: Core 2-false-/sys/class/hwmon/hwmon4/temp4_input" "coretemp: Core 3-false-/sys/class/hwmon/hwmon4/temp5_input" ];
      thermalcputemperaturestatus = true;
      thermalgputemperaturedeviceslist = [ "GPU-810b1cb6-83a1-d4ad-d7cb-179f88252b62:NVIDIA GeForce GTX 1050:false" ];
      thermalgputemperaturestatus = false;
    };

    "com/github/johnfactotum/Foliate/window" = {
      maximized = false;
    };

    "de/haeckerfelix/Fragments" = {
      client-last-connection = "00000000-0000-0000-0000-000000000000";
      window-height = 700;
      window-width = 900;
    };

    "org/blueman/general" = {
      window-properties = [ 529 350 0 0 ];
    };

    "org/gnome/Console" = {
      custom-font = "FiraCode Nerd Font 14";
      font-scale = 1.0;
      last-window-maximised = false;
      last-window-size = [ 1270 811 ];
      use-system-font = false;
    };

    "org/gnome/Extensions" = {
      window-maximized = false;
      window-width = 801;
    };

    "org/gnome/Geary" = {
      compose-as-html = true;
      formatting-toolbar-visible = false;
      migrated-config = true;
    };

    "org/gnome/Loupe" = {
      show-properties = true;
    };

    "org/gnome/Showtime/State" = {
      is-maximized = false;
    };

    "org/gnome/baobab/ui" = {
      is-maximized = false;
      window-size = mkTuple [ 960 600 ];
    };

    "org/gnome/boxes" = {
      first-run = false;
      view = "icon-view";
      window-maximized = false;
      window-position = [ 26 23 ];
      window-size = [ 768 600 ];
    };

    "org/gnome/calculator" = {
      accuracy = 9;
      angle-units = "degrees";
      base = 10;
      button-mode = "basic";
      number-format = "automatic";
      show-thousands = false;
      show-zeroes = false;
      source-currency = "";
      source-units = "degree";
      target-currency = "";
      target-units = "radian";
      window-maximized = false;
      window-size = mkTuple [ 360 507 ];
      word-size = 64;
    };

    "org/gnome/clocks/state/window" = {
      maximized = false;
      panel-id = "world";
      size = mkTuple [ 870 690 ];
    };

    "org/gnome/control-center" = {
      last-panel = "mouse";
      window-state = mkTuple [ 980 640 false ];
    };

    "org/gnome/desktop/a11y/applications" = {
      screen-reader-enabled = false;
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/System" = {
      apps = [ "org.gnome.baobab.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Logs.desktop" "org.gnome.SystemMonitor.desktop" ];
      name = "X-GNOME-Shell-System.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "gnome-abrt.desktop" "gnome-system-log.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.Dictionary.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.fonts.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop" "vinagre.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/shahruz/.config/background";
      picture-uri-dark = "file:///home/shahruz/.config/background";
      primary-color = "#3071AE";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/break-reminders/eyesight" = {
      play-sound = true;
    };

    "org/gnome/desktop/break-reminders/movement" = {
      duration-seconds = mkUint32 300;
      interval-seconds = mkUint32 1800;
      play-sound = true;
    };

    "org/gnome/desktop/datetime" = {
      automatic-timezone = true;
    };

    "org/gnome/desktop/input-sources" = {
      show-all-sources = true;
      sources = [ [ "xkb" "us" ] ];
      xkb-options = [ "ctrl:swapcaps" ];
    };

    "org/gnome/desktop/interface" = {
      accent-color = "blue";
      clock-format = "12h";
      color-scheme = "prefer-dark";
      cursor-blink = true;
      cursor-blink-time = 1000;
      cursor-size = 24;
      cursor-theme = "Adwaita";
      enable-animations = true;
      enable-hot-corners = false;
      font-antialiasing = "rgba";
      font-hinting = "slight";
      font-name = "Adwaita Sans 12";
      gtk-key-theme = "Default";
      gtk-theme = "Adwaita";
      icon-theme = "Adwaita";
      monospace-font-name = "FiraCode Nerd Font 12";
      scaling-factor = 1;
      show-battery-percentage = true;
      text-scaling-factor = 1.0;
      toolbar-style = "text";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-telegram-desktop" "gnome-power-panel" "org-gnome-console" "idea-community" "org-gnome-tweaks" "org-gnome-nautilus" "org-wezfurlong-wezterm" "org-gnome-extensions" "zen-beta" ];
    };

    "org/gnome/desktop/notifications/application/de-haeckerfelix-fragments" = {
      application-id = "de.haeckerfelix.Fragments.desktop";
    };

    "org/gnome/desktop/notifications/application/discord" = {
      application-id = "discord.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gimp" = {
      application-id = "gimp.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-about-panel" = {
      application-id = "gnome-about-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/idea-community" = {
      application-id = "idea-community.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-baobab" = {
      application-id = "org.gnome.baobab.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-characters" = {
      application-id = "org.gnome.Characters.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions" = {
      application-id = "org.gnome.Extensions.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-showtime" = {
      application-id = "org.gnome.Showtime.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-tweaks" = {
      application-id = "org.gnome.tweaks.desktop";
    };

    "org/gnome/desktop/notifications/application/org-nicotine-plus-nicotine" = {
      application-id = "org.nicotine_plus.Nicotine.desktop";
    };

    "org/gnome/desktop/notifications/application/org-qbittorrent-qbittorrent" = {
      application-id = "org.qbittorrent.qBittorrent.desktop";
    };

    "org/gnome/desktop/notifications/application/org-telegram-desktop" = {
      application-id = "org.telegram.desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/org-wezfurlong-wezterm" = {
      application-id = "org.wezfurlong.wezterm.desktop";
    };

    "org/gnome/desktop/notifications/application/steam" = {
      application-id = "steam.desktop";
    };

    "org/gnome/desktop/notifications/application/upscayl" = {
      application-id = "upscayl.desktop";
    };

    "org/gnome/desktop/notifications/application/zen-beta" = {
      application-id = "zen-beta.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = false;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      speed = 0.0;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      edge-scrolling-enabled = false;
      speed = 0.181034;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/adwaita-l.jxl";
      primary-color = "#3071AE";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/session" = {
      idle-delay = 0;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = false;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/keybindings" = {
      begin-resize = [ "<Super>r" ];
      close = [ "<Alt>q" ];
      move-to-workspace-left = [ "<Shift><Alt>h" ];
      move-to-workspace-right = [ "<Shift><Alt>l" ];
      switch-to-workspace-left = [ "<Control><Alt>h" ];
      switch-to-workspace-right = [ "<Control><Alt>l" ];
      toggle-fullscreen = [ "<Super>f" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      action-double-click-titlebar = "toggle-maximize";
      auto-raise = true;
      button-layout = "appmenu:minimize,close";
      focus-mode = "mouse";
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = true;
      window-size = mkTuple [ 1920 1045 ];
    };

    "org/gnome/evince/default" = {
      continuous = true;
      dual-page = false;
      dual-page-odd-left = false;
      enable-spellchecking = true;
      fullscreen = false;
      inverted-colors = false;
      show-sidebar = false;
      sidebar-page = "thumbnails";
      sidebar-size = 132;
      sizing-mode = "automatic";
      window-ratio = mkTuple [ 0.685518 0.484262 ];
      zoom = 0.334911;
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/file-roller/dialogs/extract" = {
      height = 800;
      recreate-folders = true;
      skip-newer = false;
      width = 1000;
    };

    "org/gnome/file-roller/file-selector" = {
      show-hidden = false;
      sidebar-size = 300;
      window-size = mkTuple [ (-1) (-1) ];
    };

    "org/gnome/file-roller/listing" = {
      list-mode = "as-folder";
      name-column-width = 68;
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "org/gnome/file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "org/gnome/gnome-system-monitor" = {
      cpu-stacked-area-chart = true;
      current-tab = "resources";
      logarithmic-scale = true;
      maximized = false;
      resources-memory-in-iec = true;
      show-dependencies = false;
      show-whose-processes = "user";
      window-height = 720;
      window-width = 800;
    };

    "org/gnome/gnome-system-monitor/disksview" = {
      col-free-visible = true;
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-26-visible = false;
      col-26-width = 0;
      columns-order = [ 0 1 8 2 3 4 6 7 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 ];
      sort-col = 0;
      sort-order = 0;
    };

    "org/gnome/mutter" = {
      center-new-windows = true;
      overlay-key = "Super";
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small";
    };

    "org/gnome/nautilus/list-view" = {
      default-zoom-level = "small";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
      initial-size-file-chooser = mkTuple [ 890 550 ];
      maximized = false;
    };

    "org/gnome/nm-applet" = {
      disable-connected-notifications = true;
    };

    "org/gnome/papers" = {
      night-mode = false;
    };

    "org/gnome/portal/filechooser/com/github/johnfactotum/Foliate" = {
      last-folder-path = "/home/shahruz/Downloads";
    };

    "org/gnome/portal/filechooser/steam" = {
      last-folder-path = "/home/shahruz/.local/share/Steam/steamapps/compatdata/3134598027/pfx/drive_c/The Genesis Order";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-schedule-automatic = false;
      night-light-temperature = mkUint32 3700;
    };

    "org/gnome/settings-daemon/plugins/housekeeping" = {
      donation-reminder-last-shown = mkInt64 1766581855650559;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "wezterm";
      name = "open terminal";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      idle-dim = false;
      power-saver-profile-on-low-battery = false;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-type = "nothing";
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "places-menu@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" "gnome-window-rules@graham00.github.com" "system-monitor@gnome-shell-extensions.gcampax.github.com" "Resource_Monitor@Ory0n" "window-on-top@yousafesaeed.github.io" "textgrabber@pierrethibault.dev" "pip-on-top@rafostar.github.com" "flickernaut@imoize.github.io" ];
      enabled-extensions = [ "screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "dock-from-dash@fthx" "dash-to-dock@micxgx.gmail.com" "blur-my-shell@aunetx" "appindicatorsupport@rgcjonas.gmail.com" "window-title-is-back@fthx" "media-progress@krypion17" "runcat@kolesnikov.se" "soundbar@karthickk.gitlab.com" "trayIconsReloaded@selfmade.pl" "in-picture@filiprund.cz" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "org.wezfurlong.wezterm.desktop" "org.telegram.desktop.desktop" "zen-beta.desktop" ];
      last-selected-power-profile = "performance";
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/shell/extensions/arcmenu" = {
      update-notifier-project-version = 65;
    };

    "org/gnome/shell/extensions/audio-visual" = {
      bar-color = "rgba(220, 138, 221, 1.00)";
      bar-count = 64;
      bottom-padding = 6;
      gradient-color = "rgba(192, 97, 203, 1.00)";
      hide-when-silent = false;
      max-height = 20;
      panel-position = "right";
      position-index = 0;
      use-gradient = true;
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      pipelines = "<{'pipeline_default': {'name': 'Default', 'effects': [{'type': 'native_static_gaussian_blur', 'id': 'effect_000000000000', 'params': {'radius': 30, 'brightness': 1, 'unscaled_radius': 0}}]}, 'pipeline_default_rounded': {'name': 'Default rounded', 'effects': [{'type': 'native_static_gaussian_blur', 'id': 'effect_000000000001', 'params': {'radius': 30, 'brightness': 0.6}}, {'type': 'corner', 'id': 'effect_000000000002', 'params': {'radius': 24}}]}}>";
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      blur = false;
      brightness = 0.6;
      sigma = 83;
      style-dialogs = 3;
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-dock" = {
      blur = false;
      brightness = 0.6;
      override-background = false;
      pipeline = "pipeline_default_rounded";
      sigma = 22;
      static-blur = true;
      style-dash-to-dock = 0;
      unblur-in-overview = false;
    };

    "org/gnome/shell/extensions/blur-my-shell/dash-to-panel" = {
      blur-original-panel = true;
    };

    "org/gnome/shell/extensions/blur-my-shell/hidetopbar" = {
      compatibility = false;
    };

    "org/gnome/shell/extensions/blur-my-shell/lockscreen" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/overview" = {
      pipeline = "pipeline_default_rounded";
      style-components = 3;
    };

    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      blur = true;
      brightness = 1.0;
      force-light-text = false;
      override-background = true;
      override-background-dynamically = false;
      pipeline = "pipeline_default";
      sigma = 0;
      static-blur = false;
      style-panel = 3;
    };

    "org/gnome/shell/extensions/blur-my-shell/screenshot" = {
      pipeline = "pipeline_default";
    };

    "org/gnome/shell/extensions/blur-my-shell/window-list" = {
      brightness = 0.6;
      sigma = 30;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      always-center-icons = false;
      apply-custom-theme = true;
      autohide-in-fullscreen = false;
      background-color = "rgb(53,50,50)";
      background-opacity = 0.95;
      custom-background-color = true;
      custom-theme-shrink = true;
      dash-max-icon-size = 58;
      disable-overview-on-startup = false;
      dock-position = "BOTTOM";
      extend-height = false;
      height-fraction = 0.9;
      hot-keys = false;
      icon-size-fixed = false;
      intellihide-mode = "FOCUS_APPLICATION_WINDOWS";
      max-alpha = 0.8;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-2";
      preview-size-scale = 0.0;
      running-indicator-style = "DOTS";
      show-apps-at-top = true;
      show-favorites = true;
      show-icons-emblems = false;
      show-running = true;
      show-show-apps-button = false;
      show-trash = false;
      show-windows-preview = false;
      transparency-mode = "DEFAULT";
    };

    "org/gnome/shell/extensions/in-picture" = {
      corner = 1;
      diagonal-relative = 30;
      gnome-version = "49.2";
      stick = true;
    };

    "org/gnome/shell/extensions/pip-on-top" = {
      stick = true;
    };

    "org/gnome/shell/extensions/rounded-window-corners-reborn" = {
      settings-version = mkUint32 7;
    };

    "org/gnome/shell/extensions/runcat" = {
      custom-system-monitor-enabled = false;
      displaying-items = "character-only";
      invert-speed = false;
    };

    "org/gnome/shell/extensions/system-monitor" = {
      show-swap = true;
      show-upload = false;
    };

    "org/gnome/shell/extensions/trayIconsReloaded" = {
      applications = "[{\"id\":\"org.telegram.desktop.desktop\",\"hidden\":false}]";
    };

    "org/gnome/shell/extensions/unite" = {
      extend-left-box = false;
      greyscale-tray-icons = false;
      reduce-panel-spacing = false;
      show-window-buttons = "always";
      window-buttons-placement = "left";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "";
    };

    "org/gnome/shell/extensions/window-title-is-back" = {
      colored-icon = false;
      fixed-width = false;
      show-app = false;
      show-icon = false;
      show-title = true;
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" = {
      font = "FiraCode Nerd Font Mono 14";
      use-system-font = false;
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 1.0 0.0 0.7843137383460999 0.8999999761581421 ]) (mkTuple [ 0.5921568870544434 0.30588236451148987 0.31372547149658203 1.0 ]) (mkTuple [ 0.47843137383461 0.40392157435417175 0.47843137383461 1.0 ]) (mkTuple [ 0.5411764979362488 0.29019609093666077 0.3019607961177826 1.0 ]) (mkTuple [ 0.4745098054409027 0.3803921639919281 0.45098039507865906 1.0 ]) (mkTuple [ 0.0 0.7843137383460999 1.0 0.8999999761581421 ]) (mkTuple [ 0.2066670060157776 0.19702200591564178 0.19702200591564178 1.0 ]) ];
      selected-color = mkTuple [ true 0.8627451062202454 0.5411764979362488 0.8666666746139526 1.0 ];
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      show-hidden = true;
    };

    "org/gtk/settings/file-chooser" = {
      clock-format = "12h";
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 157;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 26 23 ];
      window-size = mkTuple [ 1231 902 ];
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 550;
      manager-window-width = 550;
    };

    "org/virt-manager/virt-manager/confirm" = {
      delete-storage = true;
      removedev = true;
      unapplied-dev = true;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/conns/qemu:system" = {
      window-size = [ 800 600 ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/new-vm" = {
      firmware = "uefi";
      graphics-type = "system";
    };

    "org/virt-manager/virt-manager/paths" = {
      image-default = "/home/shahruz/VMs";
      media-default = "/home/shahruz/Downloads";
    };

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/home/shahruz/Downloads/install-amd64-minimal-20251012T165136Z.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/142d4a46fb57486a914d157d53fb1563" = {
      autoconnect = 1;
      vm-window-size = [ 1229 1008 ];
    };

    "org/virt-manager/virt-manager/vms/4e7c00bb818747de80ded01f9cb328b8" = {
      autoconnect = 1;
      vm-window-size = [ 1280 870 ];
    };

    "org/virt-manager/virt-manager/vms/99cdd3e6c0054818904956358785d820" = {
      autoconnect = 1;
      vm-window-size = [ 1349 1008 ];
    };

    "org/virt-manager/virt-manager/vms/c19d30f124b546ed89b576fb110ed7a5" = {
      autoconnect = 1;
      vm-window-size = [ 1384 842 ];
    };

  };
}
