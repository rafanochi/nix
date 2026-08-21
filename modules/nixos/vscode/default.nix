{
  config,
  lib,
  pkgs,
  ...
}:
let
  cfg = config.vscode;
  defaultExtensions = with pkgs.vscode-extensions; [
    # rust
    rust-lang.rust-analyzer
    fill-labs.dependi

    # haskell
    haskell.haskell
    justusadam.language-haskell

    # nix
    jnoortheen.nix-ide
    jeff-hykin.better-nix-syntax
  ];
  allPackages = cfg.extraPackages ++ defaultExtensions;
in
with lib;
{
  options.vscode = {
    enable = mkEnableOption "vscode";
    package = mkPackageOption pkgs "vscodium" { };
    defaultEditor = mkOption {
      type = types.bool;
      default = false;
      description = "Make the vscode default editor.";
    };

    extraPackages = mkOption {
      type = types.listOf types.package;
      default = [ ];
      description = "Extra packages for vscode";
    };

    excludedPackages = mkOption {
      type = types.listOf types.package;
      default = [ ];
      description = "Extra packages for vscode";
    };
  };

  config = mkIf cfg.enable {
    programs.vscode = {
      enable = true;
      package = cfg.package;
      defaultEditor = cfg.defaultEditor;

      extensions = lists.subtractLists cfg.excludedPackages allPackages;
    };
  };
}
