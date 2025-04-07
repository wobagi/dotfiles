{
  description = "WB NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf.url = "github:notashelf/nvf";
    scientific-fhs.url = "github:olynch/scientific-fhs";
  };

  outputs = { nixpkgs, self, ... }@inputs:
  let
    username = "wbaginski";
    # system = "x86_64-linux";
    #pkgs = import nixpkgs {
    #  inherit system;
    #  config.allowUnfree = true;
    #};
    #lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
      tx = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./hosts/tx/default.nix ];
	specialArgs = {
	  host = "tx";
	  inherit self inputs username;
	};
      };
    };
    home-manager = {
      useUserPackages = true;
      useGlobalPackages = true;
      extraSpecialArgs = { inherit inputs username host; };
      users.${username} = {
        imports = [
          ./home/${username}/default.nix
        ];
        home.username = "${username}";
        home.homeDirectory = "/home/${username}";
        home.stateVersion = "24.11";
        programs.home-manager.enable = true;
      };
    };
    users.users.${username} = {
      isNormalUser = true;
      description = "${username}";
      extraGroups = [
        "docker"
        "networkmanager"
        "wheel"
      ];
    };
    nix.settings.allowed-users = [ "${username}" ];
  };
}
