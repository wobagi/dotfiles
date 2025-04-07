{
  config,
  pkgs,
  inputs,
  ...
}: {
  users.users.wbaginski = {
    initialHashedPassword = "";
    isNormalUser = true;
    description = "wbaginski";
    extraGroups = [
      "wheel"
      "networkmanager"
      "libvirtd"
      "flatpak"
      "audio"
      "video"
      "plugdev"
      "input"
      "kvm"
      "qemu-libvirtd"
    ];
  #  openssh.authorizedKeys.keys = [
  #  "ssh-rsa ...."
  # ];
    packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.wbaginski = 
    import wbaginski/${config.networking.hostName}.nix;
}
