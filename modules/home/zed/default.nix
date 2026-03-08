{ ... }: {
  programs.zed-editor = {
    enable = true;
    userSettings = {
      disable_ai = true;
      vim_mode = true;
      ui_font_size = 18;
      buffer_font_size = 16;
      buffer_font_family = "FiraCode Nerd Font Mono";
      theme = {
        light = "Gruvbox Light Hard";
        dark = "Gruvbox Dark Hard";
      };

      rust-analyzer = {
        procMacro.enable = true;
        cargo = { targetDir = "target/zed"; };
      };
    };
  };
}
