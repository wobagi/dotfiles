{ pkgs, ... }:
{
  services = {
    power-profiles-daemon.enable = false;  # disable gnome power profiles
    xserver.enable = true;
    xserver.displayManager.gdm.enable = true;
    xserver.desktopManager.gnome.enable = true;
    #gvfs.enable = true;
    #gnome = {
    #  tinysparql.enable = true;
    #  gnome-keyring.enable = true;
    #};
    #dbus.enable = true;
    #fstrim.enable = true;
    #dbus.packages = with pkgs; [
    #  gcr
    #  gnome-settings-daemon
    #];
  };
  services.printing.enable = false;
  #services.logind.extraConfig = ''
  #  # don't shut down when power button i short-pressed
  #  HandlePowerKey = ignore
  #'';
}
