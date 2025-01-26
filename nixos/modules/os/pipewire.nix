{ pkgs, ... }:
{
  hardware.pulseaudio.enable = false;
  # security.rtkit.enable = true;  #switched off in security.nix
  # services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
  environment.systemPackages = with pkgs; [ pulseaudioFull ];
}
