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

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    relago = {
      url = "github:xinux-org/relago/bootstrap-relago-module";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        nixpkgs-unstable.follows = "nixpkgs-unstable";
      };
    };

    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";

    nix-data = {
      url = "github:xinux-org/nix-data";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    xinux-modules = {
      url = "github:xinux-org/modules";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    xinux-module-manager = {
      url = "github:xinux-org/module-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    uz-xkb = {
      url = "github:itsbilolbek/uzbek-linux-keyboard";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, nixvim, zen-browser
    , relago, firefox-addons, disko, nix-data, xinux-modules, ... }@inputs:
    let
      system = "x86_64-linux";
      username = "shahruz";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      unstable-pkgs = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };

    in {
      systems.modules.nixos = with inputs; [
        nix-data.nixosModules.nix-data
        xinux-modules.nixosModules.efiboot
        xinux-modules.nixosModules.gnome
        xinux-modules.nixosModules.kernel
        xinux-modules.nixosModules.networking
        xinux-modules.nixosModules.packagemanagers
        xinux-modules.nixosModules.pipewire
        xinux-modules.nixosModules.printing
        xinux-modules.nixosModules.xinux
        xinux-modules.nixosModules.metadata
      ];

      nixosConfigurations."tya" = nixpkgs.lib.nixosSystem {

        specialArgs = { inherit unstable-pkgs inputs; };

        modules = [
          nix-data.nixosModules.nix-data
          xinux-modules.nixosModules.efiboot
          xinux-modules.nixosModules.gnome
          xinux-modules.nixosModules.kernel
          xinux-modules.nixosModules.networking
          xinux-modules.nixosModules.packagemanagers
          xinux-modules.nixosModules.pipewire
          xinux-modules.nixosModules.printing
          xinux-modules.nixosModules.xinux
          xinux-modules.nixosModules.metadata
          {

            environment.systemPackages = [
              inputs.xinux-module-manager.packages.${system}.xinux-module-manager
            ];

            programs.nix-data = {
              enable = true;
              systemconfig = "/home/shahruz/nix/config/nixos/configuration.nix";
              flake = "/home/shahruz/nix/flake.nix";
              flakearg = "tya";
            };
          }

          disko.nixosModules.disko
          relago.nixosModules.relago
          nixvim.nixosModules.nixvim
          home-manager.nixosModules.home-manager
          ./config
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users."${username}" = import ./home/home.nix;
            home-manager.backupFileExtension = "backup";
            home-manager.extraSpecialArgs = let hostname = "tya";
            in { inherit zen-browser system username hostname firefox-addons; };
            networking.firewall = rec {
              allowedTCPPortRanges = [{
                from = 1714;
                to = 1764;
              }];
              allowedUDPPortRanges = allowedTCPPortRanges;
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

      nixosConfigurations."tower" = inputs.nixpkgs.lib.nixosSystem {
        specialArgs = { inherit unstable-pkgs; };

        modules = [
          disko.nixosModules.disko
          relago.nixosModules.relago
          nixvim.nixosModules.nixvim
          home-manager.nixosModules.home-manager
          ./config
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users."${username}" = import ./home/home.nix;
            home-manager.backupFileExtension = "back";
            home-manager.extraSpecialArgs = let hostname = "tya";
            in { inherit zen-browser system username hostname firefox-addons; };
            networking.firewall = rec {
              allowedTCPPortRanges = [{
                from = 1714;
                to = 1764;
              }];
              allowedUDPPortRanges = allowedTCPPortRanges;
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

      # homeConfigurations."${username}" =
      #   home-manager.lib.homeManagerConfiguration {
      #     inherit pkgs;

      #     extraSpecialArgs = {
      #       inherit unstable-pkgs zen-browser system username hostname
      #         firefox-addons;
      #     };
      #     modules = [
      #       ({ config, pkgs, ... }: {
      #         home.username = "shahruz";
      #         home.homeDirectory = "/home/shahruz";
      #         networking.firewall = rec {
      #           allowedTCPPortRanges = [{
      #             from = 1714;
      #             to = 1764;
      #           }];
      #           allowedUDPPortRanges = allowedTCPPortRanges;
      #         };

      #       })
      #       nixvim.homeManagerModules.nixvim
      #       ./config/nixvim
      #       ./home/home.nix
      #     ];
      #   };
    };
}
