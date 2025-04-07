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
  };
}
