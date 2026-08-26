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
      {
        name = "1password/tap";
        trusted = true;
      }
      {
        name = "nikitabobko/tap";
        trusted = true;
      }

    ];

    casks = [
      {
        name = "1password-cli";
        trusted = true;
      }
      {
        name = "aerospace";
        trusted = true;
      }
      {
        name = "ghostty";
        trusted = true;
      }
      {
        name = "raycast";
        trusted = true;
      }
    ];
  };
}
