{ ... }: {
  programs.wezterm = {
    enable = true;
    enableZshIntegration = true;
    extraConfig = ''
      local wezterm = require 'wezterm'

      return {
        font = wezterm.font("FiraCode Nerd Font"),
        font_size = 14.0,
        color_scheme = "MaterialDarker",
        hide_tab_bar_if_only_one_tab = true,
        initial_cols = 120,
        initial_rows = 35,
        window_decorations = "TITLE|RESIZE", -- native GNOME buttons
        enable_wayland = true,

        keys = {
          { key = '1', mods = 'ALT', action = wezterm.action.ActivateTab(0) },
          { key = '2', mods = 'ALT', action = wezterm.action.ActivateTab(1) },
          { key = '3', mods = 'ALT', action = wezterm.action.ActivateTab(2) },
          { key = '4', mods = 'ALT', action = wezterm.action.ActivateTab(3) },
          { key = '5', mods = 'ALT', action = wezterm.action.ActivateTab(4) },
          { key = '6', mods = 'ALT', action = wezterm.action.ActivateTab(5) },
          { key = '7', mods = 'ALT', action = wezterm.action.ActivateTab(6) },
          { key = '8', mods = 'ALT', action = wezterm.action.ActivateTab(7) },
          { key = '9', mods = 'ALT', action = wezterm.action.ActivateTab(8) },
        },
      }
    '';
    colorSchemes = {
      MaterialDarker = {
        ansi = [
          "#000000"
          "#ff5370"
          "#c3e88d"
          "#ffcb6b"
          "#c792ea"
          "#82aaff"
          # "#89ddff" 
          "#DC8ADD" # teal
          "#ffffff"
        ];

        brights = [
          "#545454"
          "#ff5370"
          "#c3e88d"
          "#ffcb6b"
          "#c792ea"
          "#82aaff"
          # "#89ddff"
          "#DC8ADD" # Aqua
          "#ffffff"
        ];
        background = "#212121";
        cursor_bg = "#ffffff";
        cursor_border = "#ffffff";
        cursor_fg = "#212121";
        foreground = "#eeffff";
        selection_bg = "#eeffff";
        selection_fg = "#545454";
      };
    };
  };
}

#DC8ADD

#C061CB
