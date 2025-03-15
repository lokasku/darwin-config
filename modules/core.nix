{
  pkgs,
  username,
  ...
}: {
  nix = {
    gc = {
      automatic = true;
    };
    linux-builder = {
      enable = true;
    };
    optimise = {
      automatic = true;
    };
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  nixpkgs = {
    hostPlatform = "aarch64-darwin";
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  system.stateVersion = 6;

  time = {
    timeZone = "Europe/Paris";
  };

  power = {
    sleep = {
      computer = 5;
      display = 5;
    };
  };
}
