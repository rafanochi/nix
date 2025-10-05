{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    enableGitIntegration = true;
    shellIntegration.enableZshIntegration = true;
    themeFile = "gruvbox-dark-hard";
    font = {
      size = 14;
      name = "FiraCode Nerd Font Mono";
      package = pkgs.nerd-fonts.fira-code;
    };
    settings = {
      enable_audio_bell = false;
      update_check_interval = 0;
    };
  };

}
