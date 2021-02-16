{ mkDerivation, base, hpack, hspec, hspec-discover, lib }:
mkDerivation {
  pname = "replaceme";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base ];
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [ base ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  doHaddock = false;
  prePatch = "hpack";
  license = lib.licenses.mit;
}
