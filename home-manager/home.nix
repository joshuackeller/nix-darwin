{ pkgs, ... }:
{
  imports = [
    ./starship/starship.nix
  ];
  home.username = "joshuakeller";
  home.homeDirectory = "/Users/joshuakeller";
  home.stateVersion = "26.05";

  home.sessionPath = [ "/etc/profiles/per-user/joshuakeller/bin" ];

  home.packages = with pkgs; [
    git
    fzf
    starship
  ];

  programs.zsh = {
    enable = true;
    shellAliases = {
      vim = "nvim";
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "joshuackeller";
        email = "joshuackeller@gmail.com";
      };
      core.editor = "nvim";
    };
  };

  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;
    enableZshIntegration = true;
    settings = {
      theme = "TokyoNight Moon";
      font-family = "JetBrainsMonoNL Nerd Font Mono";
      font-thicken = true;
    };
  };
}
