{ pkgs, inputs, ... }:
{
  imports = [ inputs.nvf.homeManagerModules.default ];
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  programs.nvf = {
    enable = true;
    settings = {
      vim.viAlias = false;
      vim.vimAlias = true;
      vim.lsp = {
        enable = true;
      };
    };
  };
}
