{...}: {
  homebrew = {
    enable = true;
    onActivation = {
      autoUpdate = true;
      cleanup = "uninstall";
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
      "chatgpt"
      "craft"
      "raycast"
      "obsidian"
    ];
  };
}
