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
      last-window-size = mkTuple [ 892 624 ];
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
      last-panel = "multitasking";
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

    "org/gnome/desktop/calendar" = {
      show-weekdate = false;
    };

    "org/gnome/desktop/datetime" = {
      automatic-timezone = true;
    };

    "org/gnome/desktop/input-sources" = {
      show-all-sources = true;
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "ru" ]) ];
      xkb-options = [ "ctrl:swapcaps" ];
    };

    "org/gnome/desktop/interface" = {
      accent-color = "purple";
      clock-format = "12h";
      clock-show-date = true;
      clock-show-seconds = false;
      clock-show-weekday = true;
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
      application-children = [ "org-telegram-desktop" "gnome-power-panel" "org-gnome-console" "idea-community" "org-gnome-tweaks" "org-gnome-nautilus" "org-wezfurlong-wezterm" "org-gnome-extensions" "zen-beta" "org-gnome-epiphany" ];
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

    "org/gnome/desktop/notifications/application/org-gnome-epiphany" = {
      application-id = "org.gnome.Epiphany.desktop";
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

    "org/gnome/desktop/notifications/application/org-gnome-texteditor" = {
      application-id = "org.gnome.TextEditor.desktop";
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
      numlock-state = true;
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
      restart-enabled = false;
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
      move-to-workspace-1 = [ "<Super><Shift>1" ];
      move-to-workspace-10 = [ "<Super><Shift>0" ];
      move-to-workspace-2 = [ "<Super><Shift>2" ];
      move-to-workspace-3 = [ "<Super><Shift>3" ];
      move-to-workspace-4 = [ "<Super><Shift>4" ];
      move-to-workspace-5 = [ "<Super><Shift>5" ];
      move-to-workspace-6 = [ "<Super><Shift>6" ];
      move-to-workspace-7 = [ "<Super><Shift>7" ];
      move-to-workspace-8 = [ "<Super><Shift>8" ];
      move-to-workspace-9 = [ "<Super><Shift>9" ];
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
      num-workspaces = 9;
      resize-with-right-button = true;
      workspace-names = [ "一" "二" "三" "四" "五" "六" "七" "八" "九" ];
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
      default-search-engine = "Google";
      homepage-url = "about:newtab";
    };

    "org/gnome/epiphany/state" = {
      is-maximized = true;
      window-size = mkTuple [ 1920 1045 ];
    };

    "org/gnome/epiphany/web-apps/org/gnome/Epiphany/WebApp_4fc2d97299dce44404070378cd2b0d738e4a2aa2/state" = {
      download-dir = "Downloads";
      is-maximized = true;
      recent-encodings = [ "" ];
      window-position = mkTuple [ (-1) (-1) ];
      window-size = mkTuple [ 1920 1045 ];
    };

    "org/gnome/epiphany/web-apps/org/gnome/Epiphany/WebApp_4fc2d97299dce44404070378cd2b0d738e4a2aa2/web" = {
      always-show-full-url = false;
      ask-on-download = false;
      autofill-data = true;
      default-encoding = "iso-8859-1";
      default-zoom-level = 1.0;
      enable-adblock = true;
      enable-autosearch = true;
      enable-itp = true;
      enable-mouse-gestures = true;
      enable-popups = false;
      enable-site-specific-quirks = true;
      enable-spell-checking = true;
      enable-user-css = false;
      enable-user-js = false;
      enable-webextensions = false;
      enable-website-data-storage = true;
      hardware-acceleration-policy = "always";
      language = [ "system" ];
      last-download-directory = "";
      last-upload-directory = "";
      min-font-size = 0;
      monospace-font = "FiraCode Nerd Font 12";
      reader-mode-zoom-level = 1.0;
      remember-passwords = true;
      sans-serif-font = "Sans 12";
      serif-font = "Serif 12";
      show-developer-actions = true;
      switch-to-new-tab = true;
      use-gnome-fonts = false;
      user-agent = "";
    };

    "org/gnome/epiphany/web" = {
      auto-open-schemes = [ (mkTuple [ "https://accounts.google.com" "com.googleusercontent.apps.44438659992-7kgjeitenc16ssihbtdjbgguch7ju55s" ]) ];
      autofill-data = true;
      enable-mouse-gestures = true;
      monospace-font = "FiraCode Nerd Font 12";
      reader-mode-zoom-level = 1.0;
      show-developer-actions = true;
      switch-to-new-tab = true;
      use-gnome-fonts = false;
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
      dynamic-workspaces = false;
      experimental-features = [];
      overlay-key = "Super";
    };

    "org/gnome/nautilus/icon-view" = {
      default-zoom-level = "small";
    };

    "org/gnome/nautilus/list-view" = {
      default-zoom-level = "small";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "list-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 1133 680 ];
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

    "org/gnome/portal/filechooser/org/gnome/TextEditor" = {
      last-folder-path = "/home/shahruz/nix";
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
      disabled-extensions = [ "places-menu@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" "gnome-window-rules@graham00.github.com" "system-monitor@gnome-shell-extensions.gcampax.github.com" "Resource_Monitor@Ory0n" "window-on-top@yousafesaeed.github.io" "textgrabber@pierrethibault.dev" "pip-on-top@rafostar.github.com" "flickernaut@imoize.github.io" "just-perfection-desktop@just-perfection" ];
      enabled-extensions = [ "screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "dock-from-dash@fthx" "dash-to-dock@micxgx.gmail.com" "appindicatorsupport@rgcjonas.gmail.com" "window-title-is-back@fthx" "media-progress@krypion17" "runcat@kolesnikov.se" "soundbar@karthickk.gitlab.com" "trayIconsReloaded@selfmade.pl" "in-picture@filiprund.cz" "space-bar@luchrioh" "blur-my-shell@aunetx" "date-menu-formatter@marcinjakubowski.github.com" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "org.wezfurlong.wezterm.desktop" "org.telegram.desktop.desktop" "zen-beta.desktop" ];
      last-selected-power-profile = "performance";
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = false;
    };

    "org/gnome/shell/extensions/arcmenu" = {
      update-notifier-project-version = 65;
    };

    "org/gnome/shell/extensions/audio-visual" = {
      bar-color = "rgba(220, 138, 221, 1.00)";
      bar-count = 50;
      bottom-padding = 6;
      gradient-color = "rgba(192, 97, 203, 1.00)";
      hide-when-silent = false;
      max-height = 20;
      panel-position = "right";
      position-index = 0;
      use-gradient = true;
    };

    "org/gnome/shell/extensions/blur-my-shell" = {
      debug = true;
      hacks-level = 2;
      pipelines = "<{'pipeline_default': {'name': 'Default', 'effects': [{'type': 'native_static_gaussian_blur', 'id': 'effect_000000000000', 'params': {'radius': 30, 'brightness': 1, 'unscaled_radius': 0}}]}, 'pipeline_default_rounded': {'name': 'Default rounded', 'effects': [{'type': 'native_static_gaussian_blur', 'id': 'effect_000000000001', 'params': {'radius': 30, 'brightness': 0.6}}, {'type': 'corner', 'id': 'effect_000000000002', 'params': {'radius': 24}}]}}>";
      settings-version = 2;
    };

    "org/gnome/shell/extensions/blur-my-shell/appfolder" = {
      blur = false;
      brightness = 0.6;
      sigma = 83;
      style-dialogs = 3;
    };

    "org/gnome/shell/extensions/blur-my-shell/applications" = {
      blur = false;
      blur-on-overview = false;
      dynamic-opacity = false;
      enable-all = true;
      sigma = 7;
    };

    "org/gnome/shell/extensions/blur-my-shell/coverflow-alt-tab" = {
      pipeline = "pipeline_default";
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
      hide-tooltip = false;
      hot-keys = false;
      icon-size-fixed = false;
      intellihide-mode = "FOCUS_APPLICATION_WINDOWS";
      isolate-locations = true;
      isolate-monitors = false;
      max-alpha = 0.8;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "eDP-1";
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
      workspace-agnostic-urgent-windows = true;
    };

    "org/gnome/shell/extensions/date-menu-formatter" = {
      custom-locale = "ja-JP";
      font-size = 12;
      formatter = "01_luxon";
      pattern = "EEE  dd日 HH:mm";
      text-align = "center";
      update-level = 1;
      use-default-calendar = true;
      use-default-locale = false;
    };

    "org/gnome/shell/extensions/in-picture" = {
      corner = 1;
      diagonal-relative = 30;
      gnome-version = "49.2";
      stick = true;
    };

    "org/gnome/shell/extensions/just-perfection" = {
      accent-color-icon = false;
      accessibility-menu = true;
      activities-button = false;
      clock-menu = true;
      dash-icon-size = 0;
      invert-calendar-column-items = false;
      panel = true;
      panel-in-overview = true;
      quick-settings = true;
      ripple-box = true;
      search = true;
      show-apps-button = true;
      startup-status = 1;
      support-notifier-type = 0;
      theme = false;
      type-to-search = true;
      window-demands-attention-focus = true;
      window-picker-icon = true;
      workspace = true;
      workspace-switcher-should-show = true;
      workspace-thumbnail-to-main-view = true;
      workspace-wrap-around = false;
      workspaces-in-app-grid = true;
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

"org/gnome/shell/extensions/space-bar/appearance" = {
      active-workspace-background-color = "rgba(255,255,255,0)";
      active-workspace-border-color = "rgba(0,0,0,0)";
      active-workspace-border-radius = 30;
      active-workspace-border-width = 0;
      active-workspace-font-size = 11;
      active-workspace-font-size-active = true;
      active-workspace-font-size-user = 11;
      active-workspace-font-weight = "900";
      active-workspace-padding-v = 5;
      active-workspace-text-color = "rgb(192,97,203)";
      application-styles =
        ".space-bar {n  -natural-hpadding: 15px;n}nn.space-bar-workspace-label.active {n  margin: 0 5px;n  background-color: rgba(255,255,255,0);n  color: rgb(192,97,203);n  border-color: rgba(0,0,0,0);n  font-weight: 900;n  border-radius: 30px;n  border-width: 0px;n  padding: 5px 8px;n  font-size: 11pt;n}nn.space-bar-workspace-label.inactive {n  margin: 0 5px;n  background-color: rgba(0,0,0,0);n  color: rgba(255,255,255,1);n  border-color: rgba(0,0,0,0);n  font-weight: 900;n  border-radius: 30px;n  border-width: 0px;n  padding: 5px 8px;n  font-size: 11pt;n}nn.space-bar-workspace-label.inactive.empty {n  margin: 0 5px;n  background-color: rgba(0,0,0,0);n  color: rgba(255,255,255,0.5);n  border-color: rgba(0,0,0,0);n  font-weight: 900;n  border-radius: 30px;n  border-width: 0px;n  padding: 5px 8px;n  font-size: 11pt;n}";
      empty-workspace-border-radius = 30;
      empty-workspace-border-width = 0;
      empty-workspace-font-size = 11;
      empty-workspace-font-weight = "900";
      empty-workspace-padding-v = 5;
      inactive-workspace-border-radius = 30;
      inactive-workspace-border-width = 0;
      inactive-workspace-font-size = 11;
      inactive-workspace-font-weight = "900";
      inactive-workspace-padding-v = 5;
      workspace-margin = 5;
      workspaces-bar-padding = 15;
    };

    "org/gnome/shell/extensions/space-bar/behavior" = {
      always-show-numbers = false;
      custom-label-named = ''
        {{name}}
      '';
      custom-label-unnamed = ''
        {{number}}
      '';
      enable-custom-label = true;
      enable-custom-label-in-menu = true;
      indicator-style = "workspaces-bar";
      position = "left";
      scroll-wheel-wrap-around = false;
      show-empty-workspaces = true;
      smart-workspace-names = false;
      toggle-overview = true;
    };

    "org/gnome/shell/extensions/space-bar/shortcuts" = {
      back-and-forth = true;
      enable-move-to-workspace-shortcuts = true;
    };

    "org/gnome/shell/extensions/space-bar/state" = {
      version = 34;
      workspace-names-map = ''
        {"org.gnome.Extensions":["一"],"org.gnome.Shell.Extensions":["一"],"org.wezfurlong.wezterm":["一"],"zen-beta":["二"]}
      '';
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
      custom-colors = [ (mkTuple [ 0.568627 0.254902 0.67451 1.0 ]) (mkTuple [ 0.901961 0.133333 0.862745 1.0 ]) (mkTuple [ 0.903333 0.132489 0.862763 1.0 ]) (mkTuple [ 0.47451 0.4 0.470588 1.0 ]) (mkTuple [ 0.47451 0.4 0.470588 1.0 ]) (mkTuple [ 1.0 0.0 0.784314 0.9 ]) (mkTuple [ 1.0 1.0 1.0 0.0 ]) (mkTuple [ 1.0 1.0 1.0 0.3 ]) ];
      selected-color = mkTuple [ true 0.568627 0.254902 0.67451 1.0 ];
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
