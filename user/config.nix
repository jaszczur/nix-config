with (import <nixpkgs> {});

{
  allowUnfree = true;
  services.emacs.enable = true;

  packageOverrides = pkgs: with pkgs; {
    jaszczurUtilities = pkgs.buildEnv {
      name = "jaszczur-utilities";
      paths = [ git exa ];
    };
    
    jaszczurDevTools = pkgs.buildEnv {
      name = "jaszczur-dev-tools";
      paths = [ jetbrains.idea-community ];
    };

    jaszczurDesktop = pkgs.buildEnv {
      name = "jaszczur-desktop";
      paths = [ firefox-nightly-bin ];
    };


    jaszczurPackages = pkgs.buildEnv {
      name = "jaszczur-packages";
      paths = [ jaszczurUtilities jaszczurDevTools jaszczurDesktop ];
    };
  };
}

