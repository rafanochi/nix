{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    plugins = [
      {
        name = "zsh-nix-shell";
        file = "nix-shell.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "chisui";
          repo = "zsh-nix-shell";
          rev = "v0.8.0";
          sha256 = "1lzrn0n4fxfcgg65v0qhnj7wnybybqzs4adz7xsrkgmcsr0ii8b7";
        };
      }
    ];

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "history-substring-search"
        "colored-man-pages"
        "z"
      ];
    };

    shellAliases = {
      ll = "ls -l";
      cls = "clear";
      tx = "tmux";
      g = "git";
      gc = "git clone";
      ga = "git add .";
      gs = "git status";
      gcm = "git commit -m";
      gpsh = "git push";
      gpl = "git pull";
      vim = "nvim";
      vi = "nvim";
      copy="xclip -selection clipboard";
    };
  };

  programs.starship = {
    enable = true;
    settings = {
      golang = {
        symbol = "󰟓 ";
      };
    };
  };

  home.file = {
    "~/.zshrc".text = ''
        echo "Creating .zshrc file..."
      eval "$(starship init zsh)"
    '';
  };
}
