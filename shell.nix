{ nixpkgs ? import <nixpkgs> {}, compiler ? "default" }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, singletons, stdenv }:
      mkDerivation {
        pname = "operating-system";
        version = "0.1.0";
        src = ./.;
        libraryHaskellDepends = [ base singletons ];
        homepage = "https://github.com/ttuegel/operating-system#readme";
        description = "Reflect the host and target operating systems at type level";
        license = stdenv.lib.licenses.unfree;
      };

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  drv = haskellPackages.callPackage f {};

in

  if pkgs.lib.inNixShell then drv.env else drv
