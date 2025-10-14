# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "com/github/johnfactotum/Foliate/window" = {
      maximized = false;
    };

    "org/gnome/Console" = {
      custom-font = "FiraCode Nerd Font 14";
      font-scale = 1.0;
      last-window-maximised = false;
      last-window-size = mkTuple [ 1270 811 ];
      use-system-font = false;
    };

    "org/gnome/Geary" = {
      compose-as-html = true;
      formatting-toolbar-visible = false;
      migrated-config = true;
    };

    "org/gnome/Loupe" = {
      show-properties = true;
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

    "org/gnome/control-center" = {
      last-panel = "mouse";
      window-state = mkTuple [ 980 640 false ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
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

    "org/gnome/desktop/input-sources" = {
      show-all-sources = true;
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "ctrl:swapcaps" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-theme = "Adwaita";
      font-antialiasing = "rgba";
      font-hinting = "slight";
      font-name = "Adwaita Sans 12";
      gtk-key-theme = "Default";
      gtk-theme = "Adwaita";
      icon-theme = "Adwaita";
      monospace-font-name = "FiraCode Nerd Font 12";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-telegram-desktop" "firefox" "gnome-power-panel" "org-gnome-console" "idea-community" "org-gnome-tweaks" "org-gnome-nautilus" ];
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gimp" = {
      application-id = "gimp.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/idea-community" = {
      application-id = "idea-community.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-tweaks" = {
      application-id = "org.gnome.tweaks.desktop";
    };

    "org/gnome/desktop/notifications/application/org-telegram-desktop" = {
      application-id = "org.telegram.desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/upscayl" = {
      application-id = "upscayl.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = false;
    };

    "org/gnome/desktop/peripherals/mouse" = {
      speed = 0.0;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      edge-scrolling-enabled = false;
      speed = 0.18103448275862077;
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
      idle-delay = mkUint32 0;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = false;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Alt>q" ];
      move-to-workspace-left = [ "<Shift><Alt>h" ];
      move-to-workspace-right = [ "<Shift><Alt>l" ];
      switch-to-workspace-left = [ "<Control><Alt>h" ];
      switch-to-workspace-right = [ "<Control><Alt>l" ];
      toggle-fullscreen = [ "<Super>f" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      action-double-click-titlebar = "toggle-maximize";
      auto-raise = false;
      button-layout = "appmenu:minimize,close";
      focus-mode = "click";
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-size = mkTuple [ 1024 768 ];
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
      current-tab = "processes";
      show-dependencies = false;
      show-whose-processes = "user";
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      columns-order = [ 0 1 8 2 3 4 6 7 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 ];
      sort-col = 0;
      sort-order = 0;
    };

    "org/gnome/mutter" = {
      center-new-windows = true;
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

    "org/gnome/portal/filechooser/com/github/johnfactotum/Foliate" = {
      last-folder-path = "/home/shahruz/Downloads";
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-schedule-automatic = false;
      night-light-temperature = mkUint32 3700;
    };

    "org/gnome/settings-daemon/plugins/power" = {
      idle-dim = false;
      power-saver-profile-on-low-battery = false;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-type = "nothing";
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "places-menu@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "screenshot-window-sizer@gnome-shell-extensions.gcampax.github.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "dock-from-dash@fthx" "trayIconsReloaded@selfmade.pl" "system-monitor@gnome-shell-extensions.gcampax.github.com" "TopIcons@phocean.net" "appindicatorsupport@rgcjonas.gmail.com" "dash-to-dock@micxgx.gmail.com" "blur-my-shell@aunetx" ];
      favorite-apps = [ "org.gnome.Nautilus.desktop" "firefox.desktop" "idea-community.desktop" "org.gnome.Console.desktop" "org.telegram.desktop.desktop" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "46.2";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
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

    "org/gnome/shell/extensions/rounded-window-corners-reborn" = {
      settings-version = mkUint32 7;
    };

    "org/gnome/shell/extensions/system-monitor" = {
      show-swap = true;
      show-upload = false;
    };

    "org/gnome/shell/extensions/trayIconsReloaded" = {
      applications = "[{\"id\":\"org.telegram.desktop.desktop\",\"hidden\":false}]";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "";
    };

    "org/gnome/shell/world-clocks" = {
      locations = [ ];
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.206667 0.197022 0.197022 1.0 ]) ];
      selected-color = mkTuple [ true 0.206667 0.197022 0.197022 1.0 ];
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      show-hidden = true;
    };

    "org/gtk/settings/file-chooser" = {
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

  };
}
