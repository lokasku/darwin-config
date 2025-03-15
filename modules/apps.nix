{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      vim
      git
    ];
  };
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      upgrade = true;
    };
    global = {
      brewfile = true;
    };
    casks = [
      "spotify"
      "discord"
      "telegram"
      "anki"
      "zed"
      "chatgpt"
    ];
  };
}
