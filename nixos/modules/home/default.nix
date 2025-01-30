{ inputs, username, host, ... }:
{
  imports = [
    ./bitwarden.nix
    ./browser.nix
    ./git.nix
    ./lazygit.nix
    ./nvim.nix
    ./julia.nix
    # ./taskwarrior3.nix
  ];
}
