with (import <nixpkgs> {});

{
  allowUnfree = true;
  services.emacs.enable = true;

  packageOverrides = pkgs: with pkgs; {
    jaszczurUtilities = pkgs.buildEnv {
      name = "jaszczur-utilities";
      paths = [ git exa networkmanager_openvpn mpw ];
    };
    
    jaszczurDevTools = pkgs.buildEnv {
      name = "jaszczur-dev-tools";
      paths = [ jdk jetbrains.idea-community emacs source-code-pro ];
    };

    jaszczurDesktop = pkgs.buildEnv {
      name = "jaszczur-desktop";
      paths = [ firefox-nightly-bin google-chrome tdesktop ];
    };

    jaszczurPackages = pkgs.buildEnv {
      name = "jaszczur-packages";
      paths = [ jaszczurUtilities jaszczurDevTools jaszczurDesktop ];
    };
  };
}

