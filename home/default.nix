{
  pkgs,
  inputs,
  username,
  ...
}: {
  imports = [
    ./base.nix
    ./programs
  ];

  home = {
    inherit username;
    homeDirectory = "/Users/${username}";
    stateVersion = "25.05";
  };

  programs = {
    home-manager = {
      enable = true;
    };
  };
}
