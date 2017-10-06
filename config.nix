with (import <nixpkgs> {});

{
  allowUnfree = true;
#  environment.systemPackages = [ pkgs.firefox-nightly-bin ];
  packageOverrides = pkgs: with pkgs; {
    jaszczurPackages = pkgs.buildEnv {
      name = "jaszczur-packages";
      paths = [ firefox-nightly-bin git ];
    };
  };
}

