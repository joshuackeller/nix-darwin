{ ... }:
{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true; # let Homebrew auto-update itself + formulae
      upgrade = true; # upgrade installed formulae/casks during rebuild
      cleanup = "zap"; # zap = aggressively remove anything not declared (most popular)
      # alternatives: "uninstall" or "none"
    };

    taps = [
      "1password/tap"
      "nikitabobko/tap"
    ];

    casks = [
      "1password-cli"
      "aerospace"
      "ghostty"
      "raycast"
    ];
  };
}
