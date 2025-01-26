{ pkgs, host, ... }:
{
  networking = {
    hostname = "${host}";
    networkmanager.enable = true;
    nameservers = [
      "83.175.144.9"
      "83.175.144.14"
      "8.8.8.8"
      "1.1.1.1"
    ];
    # wireless.enable = true;  # enables wireless support via wpa_supplicant
    firewall = {
      enable = true;
      allowedTCPPorts = [
        22
	80
	443
	59010
	59011
      ];
      allowedUDPPorts = [
        59010
	59011
      ];
    };
  };

  environment.systemPackages = with pkgs; [ networkmanagerapplet ];
}
