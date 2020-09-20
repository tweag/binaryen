{ pkgs ? import ./nixpkgs.nix { } }:

with pkgs;

mkShell {
  name = "haskell-binaryen";
  buildInputs = [
    binaryen
    cabal-install
    haskell.compiler.ghc884
    nix
    stack
  ];
}
