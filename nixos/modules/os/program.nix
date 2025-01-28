{ pkgs, username, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    devenv
    python3
  ];
  nix.extraOptions = ''
    trusted-users = root ${username}
  '';

  programs.scientific-fhs = {
    enable = true;
    juliaVersions = [
      {
        version = "1.10.3";
        default = true;
      }
    ];
    enableNVIDIA = false;
  };

  # programs.dconf.enable = true;
  # programs.zsh.enable = true;
  #programs.gnupg.agent = {
  #  enable = true;
  #  enableSSHSupport = true;
  #};
  #programs.nix-ld.enable = true;
  #programs.nix-ld.libraries = with pkgs; [ ];
  programs.git.enable = true;
}
