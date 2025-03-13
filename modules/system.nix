{
  pkgs,
  username,
  ...
}: {
  environment.systemPackages = [
    pkgs.vim
    pkgs.git
  ];

  users = {
    users = {
      ${username} = {
        home = "/Users/${username}";
      };
    };
  };

  nix = {
    settings = {
      experimental-features = "nix-command flakes";
    };
  };

  nixpkgs = {
    hostPlatform = "aarch64-darwin";
  };

  system = {
    stateVersion = 6;
  };
}
