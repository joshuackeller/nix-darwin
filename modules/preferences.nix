{ ... }:
{
  system.primaryUser = "joshuakeller";
  system.defaults = {
    loginwindow = {
      GuestEnabled = false;
    };

    finder = {
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
    };

    dock = {
      autohide = true;
      autohide-delay = 0.0;
      autohide-time-modifier = 1.0;
      tilesize = 40;
      static-only = false;
      showhidden = false;
      show-recents = false;
      show-process-indicators = true;
      orientation = "bottom";
    };

    NSGlobalDomain = {
      # Enable key repeat
      ApplePressAndHoldEnabled = false;
      InitialKeyRepeat = 15;
      KeyRepeat = 2;
    };
  };

  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };
}
