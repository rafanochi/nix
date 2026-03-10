{ ... }:

{
  xdg.autostart.enable = true;
  programs.keepassxc = {
    enable = true;
    autostart = true;
    settings = {
      Browser.Enabled = true;
      GUI = {
        AdvancedSettings = true;
        ApplicationTheme = "dark";
        CompactMode = true;
        HidePasswords = true;
        ShowTrayIcon = true;
        MinimizeToTray = true;
        MinimizeOnStartup = true;
        MinimizeOnClose = true;
        CheckForUpdates = false;
        TrayIconAppearance="monochrome-light";
      };
    };
  };
}
