{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs";
    };

    outputs = {self, nixpkgs}:
        let pkgs = nixpkgs.legacyPackages.x86_64-linux;
        in {
            defaultPackage.x86_64-linux = pkgs.hello;

            devShell.x86_64-linux =
                pkgs.mkShell {
                    buildInputs = [
                        pkgs.caddy
                        pkgs.perl
                        pkgs.perl538Packages.ModernPerl
                        pkgs.perl538Packages.Mojolicious
                        pkgs.perl538Packages.URI
                        pkgs.perl538Packages.LWP
                        pkgs.perl538Packages.RoleTiny
                        pkgs.perl538Packages.ScalarListUtils
                        pkgs.perl538Packages.Memoize
                        # pkgs.perl538Packages.SVG ## Not packaged
                        pkgs.perl538Packages.XMLLibXML
                        pkgs.perl538Packages.MathGeometryVoronoi
                        # pkgs.perl538Packages.MathFractalNoisemaker ## Not packaged
                        pkgs.perl538Packages.ListMoreUtils
                        pkgs.perl538Packages.LWPProtocolHttps
                        pkgs.perl538Packages.ArrayUtils
                        pkgs.perl538Packages.TextAutoformat
                    ];
                };
        };
}

