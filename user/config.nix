with (import <nixpkgs> {});

{
  allowUnfree = true;
  services.emacs.enable = true;

  packageOverrides = pkgs: with pkgs; {
    jaszczurPackages = pkgs.buildEnv {
      name = "jaszczur-packages";
      paths = [ firefox-nightly-bin git ];
    };
  };
}

