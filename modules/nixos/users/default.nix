{ pkgs, ... }:

let
  hashedPassword = "$6$P0K5RxUtyZkdmqpp$JP9.Jt2lSx7WwxQ6ePqtUWcD0PydFiBqjCUejSFSwPd6fuKSgJvatWBcVKOP4v0nGySW1BMST87P3H1occQek/";
in
{
  programs.zsh.enable = true;
  users.users = {
    shahruz = {
      inherit hashedPassword;

      isNormalUser = true;
      description = "shahruz";
      shell = pkgs.zsh;

      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };

    u2310188 = {
      inherit hashedPassword;

      isNormalUser = true;
      description = "IUT";
      shell = pkgs.zsh;

      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };
}
