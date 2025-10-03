{ config, pkgs, ... }: 
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "dunst"
      "hyprpaper"
      "waybar"
      "/usr/lib/polkit-kde-authentication-agent-1"
      "systemctl --user restart pipewire"
    ];

    monitor = [ ",preferred,auto,auto" ];

    env = [
      "XCURSOR_SIZE,24"
    ];

    input = {
      kb_layout = "us";
      follow_mouse = 1;
      sensitivity = 0;
      touchpad = {
        natural_scroll = "no";
      };
    };

    general = {
      gaps_in = 5;
      gaps_out = 15;
      border_size = 2;
      "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
      "col.inactive_border" = "rgba(595959aa)";
      no_border_on_floating = true;
      resize_on_border = true;
      layout = "dwindle";
    };

    decoration = {
      rounding = 3;
      blur = "yes";
      blur_size = 0;
      blur_passes = 4;
      blur_new_optimizations = "on";
      active_opacity = 0.9;
      inactive_opacity = 0.85;
      fullscreen_opacity = 0.9;
      drop_shadow = "yes";
      shadow_range = 4;
      shadow_render_power = 3;
      "col.shadow" = "rgba(1a1a1aee)";
    };

    animations = {
      enabled = "yes";
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, default, popin 80%"
        "border, 1, 10, default"
        "borderangle, 1, 8, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };

    dwindle = {
      no_gaps_when_only = false;
      pseudotile = true;
      preserve_split = "yes";
    };

    master = {
      new_is_master = true;
    };

    gestures = {
      workspace_swipe = "off";
    };

    device = {
      "epic-mouse-v1" = {
        sensitivity = -0.5;
      };
    };

    misc = {
      disable_hyprland_logo = true;
    };

#     windowrule = [
#       "float,^(Alacritty)$"
#       "opacity 0.9 override,^(Alacritty)$"
#       "size 69% 75%,^(Alacritty)$"
#       "center,^(Alacritty)$"
#       "opaque,^(firefox)$"
#       "opaque,^(Google-chrome)$"
#     ];

#     windowrulev2 = [
#       "opaque,noanim,class:^(jetbrains-studio)$"
#     ];

    "$mainMod" = "SUPER";

    bind = [
      "$mainMod, Return, exec, alacritty"
      "$mainMod, C, killactive"
      "$mainMod, E, exit"
      "$mainMod, D, exec, rofi -show drun"
      "$mainMod, Space, togglefloating"
      "$mainMod, F, fullscreen"
      "$mainMod, P, pseudo"
      "$mainMod, J, togglesplit"

      # screenshots
      "SUPER ALT, S, exec, hyprshot -m output -o ~/Pictures"
      "SUPER SHIFT, S, exec, hyprshot -m region --clipboard-only"

      # focus movement
      "$mainMod, left, movefocus, l"
      "$mainMod, right, movefocus, r"
      "$mainMod, up, movefocus, u"
      "$mainMod, down, movefocus, d"

      # swap windows
      "$mainMod SHIFT, left, swapwindow, l"
      "$mainMod SHIFT, right, swapwindow, r"
      "$mainMod SHIFT, up, swapwindow, u"
      "$mainMod SHIFT, down, swapwindow, d"

      # workspace switching
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      # move window to workspace
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"

      "$mainMod, R, submap, resize"
      ",escape, submap, reset"

      # scroll through workspaces
      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"

      # brightness
      ", XF86MonBrightnessUp, exec, brightnessctl set 10%+"
      ", XF86MonBrightnessDown, exec, brightnessctl set 10%-"
    ];

    bindm = [
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    binde = [
      ",right,resizeactive,10 0"
      ",left,resizeactive,-10 0"
      ",up,resizeactive,0 -10"
      ",down,resizeactive,0 10"
      ", XF86AudioRaiseVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ +5%"
    ];

    bindl = [
      ", XF86AudioLowerVolume, exec, pactl set-sink-volume @DEFAULT_SINK@ -5%"
    ];
  };
}

