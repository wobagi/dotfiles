{ config, lib, pkgs, ... }:
{
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = [ pkgs.fcitx5-mozc ]; # or fcitx5-anthy
  };

  fonts.packages = with pkgs; [
    corefonts
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    noto-fonts-extra
    nerdfonts
    ipafont
    ];
  fonts.fontconfig.defaultFonts = {
    monospace = [
      "Hack Nerd Font"
      "Noto Sans Mono CJK JP"
      "DejaVu Sans Mono"
      "IPAGothic"
      ];
    sansSerif = [
      "Noto Sans"
      "Noto Sans CJK JP"
      "DejaVu Sans"
      "IPAGothic"
      ];
    serif = [
      "DejaVu Serif"
      "IPAPMincho"
      ];
  };
}
