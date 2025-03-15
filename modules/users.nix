{
  pkgs,
  username,
  ...
}: {
  users = {
    users = {
      ${username} = {
        name = "lucas";
        home = "/Users/${username}";
        shell = pkgs.bashInteractive;
        createHome = true;
      };
    };
  };
}
