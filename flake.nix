{
  description = "FMHY Filterlist Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
  in {
    devShells."x86-64-linux".default = pkgs.mkShell {
      packages = [ pkgs.python3 ];
    };
  };
}
