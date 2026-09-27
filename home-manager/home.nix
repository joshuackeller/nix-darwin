{ pkgs, ... }:
{
  imports = [
    ./aerospace
    ./starship
    ./tmux
    ./zsh
  ];
  home.username = "joshuakeller";
  home.homeDirectory = "/Users/joshuakeller";
  home.stateVersion = "26.05";

  home.sessionPath = [ "/etc/profiles/per-user/joshuakeller/bin" ];

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
      credential.helper = "osxkeychain";
      pull.rebase = true;
      push.autoSetupRemote = true;
      init.defaultBranch = "main";
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

  programs.ssh = {
    enable = true;
    enableDefaultConfig = false;
    settings = {
      "github.com" = {
        HostName = "ssh.github.com";
        User = "git";
        Port = 443;
        IdentityFile = "~/.ssh/id_ed25519";
        AddKeysToAgent = "yes";
        UseKeychain = true;
      };
    };
  };

  programs.opencode = {
    enable = true;
    tui.theme = "tokyonight";
    settings = {
      permission = {
        edit = "ask";
        bash = "ask";
      };
    };
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
