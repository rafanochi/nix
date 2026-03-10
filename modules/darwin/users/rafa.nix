{
  inputs,
  ...
}:
let
  username = "rafa";
in
{
  config = {
    system.primaryUser = username;

    # Available users in the machine
    users.users = {
      ${username} = {
        home = "/Users/${username}";
      };
    };
  };
}
