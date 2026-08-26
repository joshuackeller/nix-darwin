{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # CLI TOOLS
    opencode
    lazygit
    jq
    ripgrep
    bat

    # LANGUAGES

    # LANGUAGE TOOLS
    clang-tools
    rustup

    # FORMATTERS
    nixfmt

    # LSPS
    typescript-go
    lua-language-server
    gopls
    vscode-langservers-extracted
    pyright
    clang
    nil

    # TEXT EDITORS
    neovim

    # OTHER
    tmux
  ];
}
