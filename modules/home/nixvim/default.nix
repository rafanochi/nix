{ pkgs, ... }:

{
  imports = [
    ./option.nix
    ./plugin.nix
    ./map.nix
  ];

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
        # colorscheme = "tokyo-night-dark";
        colorscheme = "rose-pine";
        # colorscheme = "solarized-dark";
        settings = {
          cmp = true;
          dapui = true;
          illuminate = true;
          indentblankline = true;
          lsp_semantic = false; # important
          mini_completion = true;
          telescope = true;
          telescope_borders = true;
          ts_rainbow = true;
          notify = true;
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
      lsp.servers.dockerls.package = pkgs.nodePackages.dockerfile-language-server-nodejs;
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

      require('transparent').clear_prefix('BufferLine')
      require('transparent').clear_prefix('NeoTree')
      require('transparent').clear_prefix('Gitsigns')

      -- transparent background
      -- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'none' })
      -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
      -- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
    '';

    extraPackages = with pkgs; [
      jdt-language-server
      ueberzugpp
    ];
  };
}
