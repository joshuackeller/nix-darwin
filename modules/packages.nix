{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # CLI TOOLS
    delta
    opencode
    lazygit
    jq
    ripgrep
    bat

    # LANGUAGE TOOLS
    clang-tools
    rustup

    # FORMATTERS
    nixfmt

    # LSPS
    clang
    gopls
    lua-language-server
    nil
    pyright
    typescript-go
    vscode-langservers-extracted

    # TEXT EDITORS
    neovim

    # OTHER
    colima
    docker
    tmux
  ];
}
