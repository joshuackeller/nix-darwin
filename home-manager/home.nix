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
    settings.user = {
      name = "joshuackeller";
      email = "joshuackeller@gmail.com";
    };
  };

}

# programs.ghostty = {
#   enable = true;
#   settings = {
#     theme = "tokyonight";
#     background = "#222436";
#     fontFamily = "JetBrainsMonoNL Nerd Font Mono";
#     fontThicken = true;
#     fontSize = 12;
#     adjustCellWidth = -10;
#     adjustCellHeight = 2;
#     macosIcon = "custom-style";
#     macosIconFrame = "plastic";
#     macosIconGhostColor = "ffffff";
#     macosIconScreenColor = "000000";
#     autoUpdate = "download";
#     autoUpdateChannel = "stable";
#   };
# };
