{ pkgs, ... }:
{
  home.packages = (with pkgs; [ taskwarrior 3 ]);
}
