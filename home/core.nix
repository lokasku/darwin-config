{
  pkgs,
  inputs,
  ...
}: {
  home = {
    packages = with pkgs; [
      inputs.vide.packages.${system}.vide
    ];
  };
}
