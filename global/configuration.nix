{ config, pkgs, ... }:

{
  imports = [ <nixpkgs/nixos/modules/installer/virtualbox-demo.nix> ];
  nixpkgs.config.allowUnfree = true;
  services.emacs.enable = true;

  environment.systemPackages = [ pkgs.vim
                                 pkgs.emacs ];
}
