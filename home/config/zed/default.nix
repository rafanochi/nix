{ ... }:
{
  programs.zed-editor = {
    enable = true;
    userSettings = {
      vim_mode = true;
      ui_font_size = 18;
      buffer_font_size = 16;
      buffer_font_family = "Fira Code";
      theme = {
        dark = "Gruvbox Dark Hard";
      };
    };
  };
}
