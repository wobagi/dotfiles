{ pkgs, ... }:
{
  virtualisation.docker.enable = true;
  virtualisation.docker.rootless.enable = {
    enable = true;
    setSocketVariable = true;
  }
}
