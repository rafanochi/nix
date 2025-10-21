{ pkgs, ... }:

let
  hpkgs = pkgs.haskell.packages."ghc98";

in
{

  home.packages = with hpkgs; [
    ghc
    haskell-language-server
    cabal-install
  ];
}


