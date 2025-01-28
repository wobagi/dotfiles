{ inputs, username, host, ... }:
{
  imports = [
    ./browser.nix
    ./git.nix
    ./lazygit.nix
    ./nvim.nix
    ./julia.nix
  ];
}
