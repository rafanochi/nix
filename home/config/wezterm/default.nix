{ ... }:
{
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
      }
    '';
    colorSchemes = {
      MaterialDarker = {
        ansi = [
          "#000000"
          "#ff5370"
          "#c3e88d"
          "#ffcb6b"
          "#82aaff"
          "#c792ea"
          "#89ddff"
          "#ffffff"
        ];
        brights = [
          "#545454"
          "#ff5370"
          "#c3e88d"
          "#ffcb6b"
          "#82aaff"
          "#c792ea"
          "#89ddff"
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

