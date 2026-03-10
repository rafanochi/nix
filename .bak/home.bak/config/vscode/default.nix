{ pkgs, username, hostname, ... }:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;

    profiles.default = {
      userSettings = {
        "workbench.colorTheme" = "Atomize";
        "editor.tabSize" = 2;
        "editor.fontFamily" = "FiraCode Nerd Font";
        "editor.fontSize" = 14;
        "window.zoomLevel" = 1;
        "editor.semanticHighlighting.enabled" = false;
        "editor.fontLigatures" = true;
        "window.commandCenter" = false;
        "workbench.layoutControl.enabled" = false;
        "terminal.integrated.defaultProfile.linux" = "zsh";
        "extensions.experimental.affinity" = {
          "asvetliakov.vscode-neovim" = 1;
        };
        "breadcrumbs.enabled" = false;
        "editor.cursorBlinking" = "blink";
        "editor.folding" = false;
        "editor.hideCursorInOverviewRuler" = true;
        "editor.minimap.enabled" = false;
        "editor.occurrencesHighlight" = "off";
        "editor.roundedSelection" = false;
        "editor.selectionHighlight" = false;
        "editor.scrollBeyondLastLine" = false;
        "explorer.decorations.colors" = false;
        "explorer.openEditors.visible" = 0;
        "workbench.startupEditor" = "none";
        "workbench.tree.renderIndentGuides" = "none";
        "workbench.activityBar.location" = "hidden";
        "editor.guides.indentation" = false;

        # --- Haskell-language-server ---
        "haskell.serverExecutablePath" = "${pkgs.haskell-language-server}/bin/haskell-language-server-wrapper";
        "haskell.manageHLS" = "PATH";

        # --- Nix LSP ---
        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nixd"; # you can also use "nil" if you prefer
        "nix.formatterPath" = "${pkgs.nixfmt-classic}/bin/nixfmt";

        "nix.serverSettings" = {
          "nixd" = {
            "formatting" = {
              "command" = [ "nixfmt" ];
            };
            "nixpkgs" = {
              # Default: works out of the box using <nixpkgs>
              "expr" = "import <nixpkgs> { }";
            };
            "options" = {
              # If you’re on NixOS:
              "nixos" = {
                "expr" = "(builtins.getFlake (builtins.toString ./.)).nixosConfigurations.${hostname}.options";
              };
              # If you use standalone Home Manager:
              "home-manager" = {
                "expr" = "(builtins.getFlake (builtins.toString ./.)).homeConfigurations.${username}.options";
              };
            };
            "diagnostic" = {
              "suppress" = [ "sema-extra-with" ];
            };
          };
        };
      };

      extensions = with pkgs.vscode-extensions; [
        emroussel.atomize-atom-one-dark-theme
        haskell.haskell
        # asvetliakov.vscode-neovim
        bbenoist.nix
        jnoortheen.nix-ide
        tobiasalthoff.atom-material-theme
      ];
      keybindings = [
        {
          key = "ctrl+b";
          command = "-vscode-neovim.ctrl-b";
          when = "editorTextFocus && neovim.ctrlKeysNormal.b && neovim.init && neovim.mode != 'insert' && editorLangId not in 'neovim.editorLangIdExclusions'";
        }
        {
          key = "alt+h";
          command = "workbench.view.explorer";
          when = "viewContainer.workbench.view.explorer.enabled";
        }
        {
          key = "alt+h";
          command = "-testing.toggleTestingPeekHistory";
          when = "testing.isPeekVisible";
        }
        {
          key = "alt+l";
          command = "workbench.action.focusFirstEditorGroup";
        }
        {
          key = "shift+alt+l";
          command = "toggleSearchEditorContextLines";
          when = "inSearchEditor";
        }
        {
          key = "alt+l";
          command = "-toggleSearchEditorContextLines";
          when = "inSearchEditor";
        }
        {
          key = "ctrl+k";
          command = "-vscode-neovim.send";
          when = "editorTextFocus && neovim.ctrlKeysNormal.k && neovim.init && neovim.mode != 'insert' && editorLangId not in 'neovim.editorLangIdExclusions'";
        }
        {
          key = "ctrl+k";
          command = "-vscode-neovim.send";
          when = "editorTextFocus && neovim.ctrlKeysInsert.k && neovim.init && neovim.mode == 'insert' && editorLangId not in 'neovim.editorLangIdExclusions'";
        }
        {
          key = "ctrl+c";
          command = "-vscode-neovim.escape";
          when = "editorTextFocus && neovim.ctrlKeysInsert.c && neovim.init && neovim.mode != 'normal' && editorLangId not in 'neovim.editorLangIdExclusions'";
        }
        {
          key = "ctrl+c";
          command = "-vscode-neovim.escape";
          when = "editorTextFocus && neovim.ctrlKeysNormal.c && neovim.init && !dirtyDiffVisible && !findWidgetVisible && !inReferenceSearchEditor && !markersNavigationVisible && !notebookCellFocused && !notificationCenterVisible && !parameterHintsVisible && !referenceSearchVisible && neovim.mode == 'normal' && editorLangId not in 'neovim.editorLangIdExclusions'";
        }
        {
          key = "ctrl+j";
          command = "-vscode-neovim.send-cmdline";
          when = "neovim.init && neovim.mode == 'cmdline'";
        }
        {
          key = "ctrl+j";
          command = "-vscode-neovim.send";
          when = "editorTextFocus && neovim.ctrlKeysNormal.j && neovim.init && neovim.mode != 'insert' && editorLangId not in 'neovim.editorLangIdExclusions'";
        }
        {
          key = "ctrl+j";
          command = "-vscode-neovim.send";
          when = "editorTextFocus && neovim.ctrlKeysInsert.j && neovim.init && neovim.mode == 'insert' && editorLangId not in 'neovim.editorLangIdExclusions'";
        }
        {
          key = "alt+x";
          command = "workbench.view.extensions";
          when = "viewContainer.workbench.view.extensions.enabled";
        }
        {
          key = "ctrl+shift+x";
          command = "-workbench.view.extensions";
          when = "viewContainer.workbench.view.extensions.enabled";
        }
        {
          key = "alt+g";
          command = "workbench.action.terminal.openDetectedLink";
          when = "accessibleViewIsShown && terminalHasBeenCreated && accessibleViewCurrentProviderId == 'terminal'";
        }
        {
          key = "ctrl+shift+g";
          command = "-workbench.action.terminal.openDetectedLink";
          when = "accessibleViewIsShown && terminalHasBeenCreated && accessibleViewCurrentProviderId == 'terminal'";
        }
        {
          key = "alt+d";
          command = "workbench.view.debug";
          when = "viewContainer.workbench.view.debug.enabled";
        }
        {
          key = "ctrl+shift+d";
          command = "-workbench.view.debug";
          when = "viewContainer.workbench.view.debug.enabled";
        }
      ];
    };
  };
}
