{ config, ... }: {
  programs.rofi = {
    enable = true;
    theme =
      let inherit (config.lib.formats.rasi) mkLiteral;
      in {
        "*" = {
          bg0 = mkLiteral "#212121F2";
          bg1 = mkLiteral "#2A2A2A";
          bg2 = mkLiteral "#3D3D3D80";
          bg3 = mkLiteral "#4CAF50F2";
          fg0 = mkLiteral "#E6E6E6";
          fg1 = mkLiteral "#FFFFFF";
          fg2 = mkLiteral "#969696";
          fg3 = mkLiteral "#3D3D3D";
        };
      };
  };
}
