{ config, lib, pkgs, ... }:
{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
      fcitx5-configtool
    ]; # or fcitx5-anthy
  };

  fonts.packages = with pkgs; [
    corefonts
    noto-fonts
    noto-fonts-cjk-sans
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

  environment.variables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
  };
  environment.systemPackages = with pkgs; [
    ibus-engines.mozc
  ];

}
