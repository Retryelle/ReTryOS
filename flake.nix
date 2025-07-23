{
  description = "ReTryOS";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, stylix, ... } @inputs:
  let
    user = "Retryelle";

    hosts = [
      { hostname = "ReTryOS"; system = "x86_64-linux"; stateVersion = "25.05"; }
    ];

    build = { hostname, system, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = { inherit inputs user hostname stateVersion; };

      modules = [
        ./nixos/modules

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";
          home-manager.users.${user} = ./home-manager/home.nix;
        }
      ];
    };
  in {
    nixosConfigurations = builtins.listToAttrs (map: (host: {
      name = host.hostname;
      value = build {
        inherit (host) hostname system stateVersion;
      };
    }) hosts);
  };
}
