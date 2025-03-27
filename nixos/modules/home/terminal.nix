{ config, lib, ... }:
{
  programs = {
    bash = {
      shellAliases = {
        bryza = "ssh -Y wbaginski@212.180.255.99 -p 2301";
      };
    };
  };
}

