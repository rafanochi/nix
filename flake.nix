{
  description = "Unified Flake for NixOS and Arch Linux";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, nixvim, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      unstable-pkgs = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };

    in
    {
      nixosConfigurations.tya = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit unstable-pkgs; };
        modules = [
          nixvim.nixosModules.nixvim
          home-manager.nixosModules.home-manager
          ./config
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.shahruz = import ./home/home.nix;
            home-manager.backupFileExtension = "backup";
          }
          # Symlink module
          {
            system.activationScripts.nixvimSymlinks.text = ''
              mkdir -p /usr/local/bin
              ln -sf ${pkgs.neovim}/bin/nvim /usr/local/bin/vim
              ln -sf ${pkgs.neovim}/bin/nvim /usr/local/bin/vi
            '';
          }
        ];
      };

      homeConfigurations.shahruz = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        specialArgs = { inherit unstable-pkgs; };
        modules = [
          ({ config, pkgs, ... }: {
            home.username = "shahruz";
            home.homeDirectory = "/home/shahruz";
          })
          nixvim.homeManagerModules.nixvim
          ./config/nixvim
          ./home/home.nix
        ];
      };
    };
}

