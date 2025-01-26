{ pkgs, username, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "pl";
      variable = "";
    };

    #displayManager.autoLogin = {
    #  enable = true;
    #  user = "${username}";
    #};
    libinput = {
      enable = true;
    };
  };
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
