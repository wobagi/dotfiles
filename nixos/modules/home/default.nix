{ inputs, username, host, ... }:
{
  imports = [
    ./bitwarden.nix
    ./browser.nix
    ./git.nix
    ./lazygit.nix
    ./nvim.nix
    ./obs.nix
    ./julia.nix
    ./terminal.nix
    # ./taskwarrior3.nix
  ];
}
