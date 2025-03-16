{
  pkgs,
  inputs,
  system,
  ...
}: {
  home = {
    packages = with pkgs; [
      inputs.vide.packages.${system}.vide
    ];

    sessionVariables = {
      EDITOR = "vide";
      VISUAL = "vide";
    };
  };
}
