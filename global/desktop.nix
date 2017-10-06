{ config, pkgs, ... }:

{ 
  environment.systemPackages = with pkgs; [
    gnome-desktop
    mpv
    
  ];
}
