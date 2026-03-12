{ pkgs, ... }:
{
  fonts.packages = with pkgs; [
    # corefonts
    # General Noto fonts
    noto-fonts
    noto-fonts-color-emoji
    # CJK specific fonts (Sans and Serif)
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif

    # Coding fonts
    nerd-fonts.fira-code
    fira-code-symbols
  ];
}
