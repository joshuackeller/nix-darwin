{ ... }:
{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    taps = [
      {
        name = "1password/tap";
        trusted = true;
      }
    ];

    casks = [
      {
        name = "1password-cli";
        trusted = true;
      }
      {
        name = "raycast";
        trusted = true;
      }
    ];
  };
}
