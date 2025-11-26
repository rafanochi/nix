{ pkgs, ... }:

let
  hpkgs = pkgs.haskell.packages."ghc98";
in
{

  home.packages = with pkgs; with hpkgs; [
    ghc
    haskell-language-server
    cabal-install
    haskell-debug-adapter
    ghci-dap
    haskell-dap
    zlib
  ];
}


