{ inputs, ... }:
{
  imports = [ inputs.scientific-fhs.nixosModules.default ];
  programs.scientific-fhs = {
    enable = true;
    juliaVersions = [{
      version = "1.10.4";
      default = true;
    }];
    enableNVIDIA = false;
  };
}
