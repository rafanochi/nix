{ pkgs, ... }:

{
  imports = [ ./option.nix ./plugin.nix ./map.nix ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    luaLoader.enable = true;

    # Disable colorscheme influence for syntax highlighting
    colorschemes = {
      base16 = {
        enable = true;
        colorscheme = "material-darker";
        settings = {
          cmp = false;
          illuminate = false;
          indentblankline = false;
          lsp_semantic = false; # important
          mini_completion = false;
          telescope = false;
          telescope_borders = false;
        };
      };
    };

    # Optional: override Tree-sitter captures if you want colors
    # highlight = {
    #   "@function" = {
    #     fg = "#82aaff";
    #     bold = false;
    #   };
    #   "@keyword" = {
    #     fg = "#ffffff";
    #     bold = false;
    #   };
    #   "@comment" = {
    #     fg = "#7f848e";
    #     italic = true;
    #   };
    #   "@string" = { fg = "#a6e3a1"; };

    #   "@type.builtin" = { fg = "#ffffff"; };
    #   "@type.qualifier" = { fg = "#ffffff"; };
    #   "@namespace" = { fg = "#ffffff"; };
    #   "@property" = { fg = "#ffffff"; };
    #   "@field" = { fg = "#ffffff"; };
    #   "@punctuation" = { fg = "#0d0d0d"; };
    # };

    plugins = {
      lsp.servers.dockerls.package =
        pkgs.nodePackages.dockerfile-language-server-nodejs;
    };

    diagnostic.settings = {
      signs = true;
      underline = true;
      update_in_insert = false;
      virtual_text = false;

      float = {
        source = "always";
        border = "rounded";
      };
    };

    # remove vim.cmd highlights entirely
    extraConfigLuaPost = ''
      vim.lsp.config.hls = {
        settings = {
          haskell = { formattingProvider = "fourmolu" },
        },
      }
      vim.lsp.enable("hls")
    '';

    extraPackages = with pkgs; [ jdt-language-server ueberzugpp ];
  };
}
