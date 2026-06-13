{ pkgs, ... }:

{
  programs.helix = {
    enable = true;

    package = pkgs.evil-helix;

    settings = {
      theme = "sonokai";
    };

    ignores = [
      ".build/"
      "!.gitignore"
    ];

    languages = {
      language = [
        {
          name = "nix";
          formatter = {
            command = "${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt";
          };
        }
      ];
    };

    extraPackages = with pkgs; [
      bash-language-server
      clang-tools
      cmake-language-server
      vscode-langservers-extracted
      gopls
      delve
      gotools
      golangci-lint-langserver
      jdt-language-server
      typescript
      typescript-language-server
      kotlin-language-server
      lua-language-server
      marksman
      nil
      nixpkgs-fmt
      python312Packages.python-lsp-server
      rust-analyzer
      tailwindcss-language-server
      taplo
      lemminx
      yaml-language-server
    ];
  };

}
