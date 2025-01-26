{ username, ... }:
{
  security.rtkit.enable = true;
  security.sudo.enable = true;
  security.sudo.extraRules = [{
    users = [ "${username}" ];
    commands = [{
      command = "ALL";
      options = ["NOPASSWD"];
    }];
  }];
  }
  security.pam.services.swaylock = { };
  security.pam.services.hyprlock = { };
}
