{
  pkgs,
  inputs,
  system,
  ...
}: {
  home = {
    packages = with pkgs; [
      inputs.vide.packages.${system}.vide
      gimp
    ];

    sessionVariables = {
      EDITOR = "vide";
      VISUAL = "vide";
    };
  };
}
