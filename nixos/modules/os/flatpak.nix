{ inputs, pkgs, ... }:
{
  imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];
  services.flatpak = {
    enable = true;
    # packages = [
    #
    #
    #];
    #overrides = {
    #  global = {
    #    Context.sockets = [
    #      "wayland"
    #	  "!x11"
    #	  "!fallback-x11"
    #    ];
    #  };
    #};
  };
}
