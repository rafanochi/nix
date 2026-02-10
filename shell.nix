{pkgs ? import <nixpkgs> {}, ...}: pkgs.mkShell {
  packages = with pkgs; [
     nixd
     statix
     deadnix
     nixfmt
  ];
}
