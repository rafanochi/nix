{
  description = "Unified Flake for NixOS and Arch Linux";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    zen-browser = { url = "github:0xc000022070/zen-browser-flake"; };
  };

  outputs =
    { self
    , nixpkgs
    , nixpkgs-unstable
    , home-manager
    , nixvim
    , zen-browser
    , ...
    }@inputs:
    let
      system = "x86_64-linux";
      username = "shahruz";
      hostname = "tya";
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
      nixosConfigurations."${hostname}" = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit unstable-pkgs; };
        modules = [
          nixvim.nixosModules.nixvim
          home-manager.nixosModules.home-manager
          ./config
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users."${username}" = import ./home/home.nix;
            home-manager.backupFileExtension = "backup";
            home-manager.extraSpecialArgs = {
              inherit zen-browser system username hostname;
            };
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

      homeConfigurations."${username}" =
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          extraSpecialArgs = {
            inherit unstable-pkgs zen-browser system username hostname;
          };
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

