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
      texliveFull
    ];

    sessionVariables = {
      EDITOR = "vide";
      VISUAL = "vide";
    };
  };
}
