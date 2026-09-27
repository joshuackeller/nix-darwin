{ ... }:
{
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    mouse = true;
    terminal = "tmux-256color";
    keyMode = "vi";
    historyLimit = 50000;
    prefix = "C-t";
    extraConfig = builtins.readFile ./tmux.conf;
  };
}
