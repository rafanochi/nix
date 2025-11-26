{ config, pkgs, ... }:
let
  # Wallpapers
  wallpaperDir = ./Wallpapers;

  # Scripts
  scriptDir = ./Scripts;
  scriptFiles = builtins.attrNames (builtins.readDir scriptDir);
  shFiles =
    builtins.filter (f: builtins.match ".*\\.sh$" f != null) scriptFiles;

  scriptAttrs = builtins.listToAttrs (map
    (fileName: {
      name = ".config/i3/Scripts/${fileName}";
      value = {
        source = "${scriptDir}/${fileName}";
        executable = true;
      };
    })
    shFiles);

  # Wallpapers as a home.file entry (just the directory)
  wallpaperAttrs = {
    ".config/i3/Wallpapers" = {
      source = wallpaperDir; # <--- single path, not list
      recursive = true;
    };
  };

  # Current wallpaper index file
  indexFileAttrs = {
    ".config/i3/.current_wallpaper_index" = {
      text = "0"; # initial value
    };
  };

  # Merge everything
  homeFiles = scriptAttrs // wallpaperAttrs // indexFileAttrs;

in
{

  imports = [ ./rofi.nix ./i3status.nix ];

  xsession.windowManager.i3 = {
    enable = true;

    config = {
      fonts = {
        names = [ "FireCode Nerd Font" ];
        size = 14.0;
      }; 

      terminal = "alacritty";

      floating.modifier = "Mod1";

      keybindings = {
        # launchers
        "Mod1+Return" = "exec kitty";
        "Mod4+e" = "exec nemo";
        "Print" = "exec --no-startup-id flameshot gui";

        # kill window
        "Mod1+Shift+q" = "kill";

        # focus movement
        "Mod1+j" = "focus left";
        "Mod1+k" = "focus down";
        "Mod1+l" = "focus up";
        "Mod1+semicolon" = "focus right";

        "Mod1+Left" = "focus left";
        "Mod1+Down" = "focus down";
        "Mod1+Up" = "focus up";
        "Mod1+Right" = "focus right";

        # move windows
        "Mod1+Shift+j" = "move left";
        "Mod1+Shift+k" = "move down";
        "Mod1+Shift+l" = "move up";
        "Mod1+Shift+semicolon" = "move right";

        "Mod1+Shift+Left" = "move left";
        "Mod1+Shift+Down" = "move down";
        "Mod1+Shift+Up" = "move up";
        "Mod1+Shift+Right" = "move right";

        # split
        "Mod1+h" = "split h";
        "Mod1+v" = "split v";

        # fullscreen
        "Mod1+f" = "fullscreen toggle";

        # layout
        "Mod1+s" = "layout stacking";
        "Mod1+w" = "layout tabbed";
        "Mod1+e" = "layout toggle split";

        # floating toggle
        "Mod1+Shift+space" = "floating toggle";

        # switch tiling/floating focus
        "Mod1+space" = "focus mode_toggle";

        # parent focus
        "Mod1+a" = "focus parent";

        # scratchpad
        "Mod1+Shift+minus" = "move scratchpad";
        "Mod1+minus" = "scratchpad show";

        # workspaces
        "Mod1+1" = "workspace number 1";
        "Mod1+2" = "workspace number 2";
        "Mod1+3" = "workspace number 3";
        "Mod1+4" = "workspace number 4";
        "Mod1+5" = "workspace number 5";
        "Mod1+6" = "workspace number 6";
        "Mod1+7" = "workspace number 7";
        "Mod1+8" = "workspace number 8";
        "Mod1+9" = "workspace number 9";
        "Mod1+0" = "workspace number 10";

        "Mod1+Shift+1" = "move container to workspace number 1";
        "Mod1+Shift+2" = "move container to workspace number 2";
        "Mod1+Shift+3" = "move container to workspace number 3";
        "Mod1+Shift+4" = "move container to workspace number 4";
        "Mod1+Shift+5" = "move container to workspace number 5";
        "Mod1+Shift+6" = "move container to workspace number 6";
        "Mod1+Shift+7" = "move container to workspace number 7";
        "Mod1+Shift+8" = "move container to workspace number 8";
        "Mod1+Shift+9" = "move container to workspace number 9";
        "Mod1+Shift+0" = "move container to workspace number 10";

        # mouse workspace scroll
        "Mod1+button5" = "workspace next";
        "Mod1+button4" = "workspace prev";

        # mouse move container
        "Mod1+Shift+button5" =
          "exec --no-startup-id bash $HOME/.config/i3/Scripts/move_container.sh next";
        "Mod1+Shift+button4" =
          "exec --no-startup-id bash $HOME/.config/i3/Scripts/move_container.sh prev";

        # reload / restart
        "Mod1+Shift+c" = "reload";
        "Mod1+Shift+r" = "restart";

        # exit
        "Mod1+Shift+e" =
          ''exec "i3-nagbar -t warning -m 'Exit i3?' -B 'Yes' 'i3-msg exit'"'';

        # resize mode
        "Mod1+r" = ''mode "resize"'';

        # wallpaper script
        "Mod1+Shift+w" =
          "exec --no-startup-id bash $HOME/.config/i3/Scripts/wallpaper.sh";

        "Mod1+d" = "exec --no-startup-id rofi -show drun";
      };

      modes = {
        resize = {
          j = "resize shrink width 5 px or 5 ppt";
          k = "resize grow height 5 px or 5 ppt";
          l = "resize shrink height 5 px or 5 ppt";
          semicolon = "resize grow width 5 px or 5 ppt";

          Left = "resize shrink width 5 px or 5 ppt";
          Down = "resize grow height 5 px or 5 ppt";
          Up = "resize shrink height 5 px or 5 ppt";
          Right = "resize grow width 5 px or 5 ppt";

          Return = ''mode "default"'';
          Escape = ''mode "default"'';
          "Mod1+r" = ''mode "default"'';
        };
      };

      gaps = { inner = 5; };

      bars = [{
        statusCommand = "i3status";

        colors = { background = "#340032"; };
      }];
    };

    # Autostart
    extraConfig = ''
      exec --no-startup-id dex --autostart --environment i3
      exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork
      exec --no-startup-id nm-applet

      # brightness
      bindsym XF86MonBrightnessDown exec brightnessctl s 5%-
      bindsym XF86MonBrightnessUp exec brightnessctl s +5%

      # volume + media keys
      set $refresh_i3status killall -SIGUSR1 i3status
      bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ +2% && $refresh_i3status
      bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume @DEFAULT_SINK@ -2% && $refresh_i3status
      bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute @DEFAULT_SINK@ toggle && $refresh_i3status
      bindsym XF86AudioMicMute exec --no-startup-id pactl set-source-mute @DEFAULT_SOURCE@ toggle && $refresh_i3status

      bindsym XF86AudioPlay exec playerctl play-pause
      bindsym XF86AudioNext exec playerctl next
      bindsym XF86AudioPrev exec playerctl previous

      bindsym Mod4+space exec --no-startup-id ~/.config/i3/Scripts/toggle_layout.sh

      ${builtins.readFile ./executor.config}
      ${builtins.readFile ./i3lock.config}
      ${builtins.readFile ./borders.config}

      # (you had this)
      exec i3-config-wizard
    '';
  };

  home.packages = with pkgs; [
    dex
    i3lock
    i3-gaps
    networkmanagerapplet
    brightnessctl
    flameshot
    playerctl
    nemo
    kitty
    feh
    alacritty
  ];

  home.file = homeFiles;
}

