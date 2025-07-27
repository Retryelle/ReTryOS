{ pkgs, user, ... }:
{
  services.getty = {
    autologinOnce = true;
    autologinUser = user;
    extraArgs = [];
    greetingLine = "";
    helpLine = "";
    loginOptions = null;
    loginProgram = "${pkgs.shadow}/bin/login";
  };
}
