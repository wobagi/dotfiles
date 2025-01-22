{ config, pkgs, ... }:

{
  home.username = "wbaginski";
  home.homeDirectory = "/home/wbaginski";
  
  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
  #   "Xcursor.size" = 16;
  # "Dft.dpi" = 172;
  # };

  home.packages = with pkgs; [
    # archives
    # zip
    # xz
    # unzip
    # p7zip

    # utils
    fzf
    # julia
    taskwarrior
    # system tools
    # pciutils # contains lspci
    # usbutils # contains lsusb
    ];

    # programs.git = {
    #  enable = true;
    #  userName = "...";
    #  userEmail = "...";
    #};

  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin"
    '';
    shellAliases = {
      nx = "cd ~/.df/nixos"
      vim = "nvim";
    };
  };
  
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

}
