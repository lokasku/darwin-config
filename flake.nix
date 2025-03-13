{
  nixConfig = {
    substituers = [
      "https://cache.nixos.org"
    ];
  };

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    };
    darwin = {
      url = "github:LnL7/nix-darwin/master";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    vide = {
      url = "github:bartekzer/vide";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
    lrk = {
      url = "github:bartekzer/lrk";
      inputs = {
        nixpkgs = {
          follows = "nixpkgs";
        };
      };
    };
  };

  outputs = inputs @ {
    self,
    darwin,
    nixpkgs,
    home-manager,
    ...
  }: let
    system = "aarch64-darwin";
    username = "lucas";
    pkgs = nixpkgs.legacyPackages.${system};
    specialArgs =
      inputs
      // {
        inherit username;
      };
  in {
    formatter.${system} = pkgs.alejandra;
    darwinConfigurations = {
      mac = darwin.lib.darwinSystem {
        inherit system specialArgs;
        modules = [
          ./modules/system.nix

          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = specialArgs;
            home-manager.users.${username} = import ./home;
          }
        ];
      };
    };
  };
}
