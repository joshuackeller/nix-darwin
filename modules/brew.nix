{ ... }:
{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      cleanup = "zap";
    };

    casks = [
      {
        name = "1password-cli";
        trusted = true;
      }
      {
        name = "raycast";
        trusted = true;
      }
      {
        name = "google-chrome";
        trusted = true;
      }
    ];
  };
}
