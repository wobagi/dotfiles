{
  pkgs,
  config,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/os/default.nix
  ];

  environment.systemPackages = with pkgs; [
    acpi
    brightnessctl
    cpupower-gui
    home-manager
    powertop
  ];

  services = {
    # power-profiles-daemon.enable = true;

    #upower = {
    #  enable = true;
    #  percentageLow = 20;
    #  percentageCritical = 5;
    #  percentageAction = 3;
    #  criticalPowerAction = "PowerOff";
    #};

    #tlp.settings = {
    #  CPU_ENERGY_PERF_POLICY_ON_AC = "power";
    #  CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
    #};
  };

  #boot = {
  #  kernelModules = [ "acpi_call" ];
  #  extraModulePackages = 
  #    with config.boot.kernelPackages;
  #    [
  #      acpi_call
  #	cpupower
  #    ]
  #    ++ [ pkgs.cpupowr-gui ];
  #};
}

