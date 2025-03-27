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
      nx = "cd ~/.df/nixos";
      vim = "nvim";
    };
  };


  # programs.scientific-fhs = {
  #   enable = true;
  #   juliaVersions = [
  #     {
  #       version = "julia_18";
  #       default = true;
  #     }
  #     { version = "julia_17"; }
  #     { version = "julia_16"; }
  #   ];
  #   enableNVIDIA = false;
  # };


  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

}
