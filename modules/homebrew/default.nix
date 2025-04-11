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
    masApps = {
      iMovie = 408981434;
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
