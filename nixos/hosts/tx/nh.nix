{ pkgs, username, ... }:
{
  programs.nh = {
    enable = true;
    clean = {
      enable = true;
      extraArgs = "--keeps-since 7d --keep 5";
    };
    flake = "/home/${username}/.df/nixos";
  };
  environment.systemPackages = with pkgs; [
    nix-output-monitor
    nvd
  ];
}
