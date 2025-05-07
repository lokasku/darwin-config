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
    masApps = {};
    casks = [
      "signal"
      "whatsapp"
      "spotify"
      "discord"
      "telegram"
      "anki"
      "chatgpt"
      "raycast"
      "obsidian"
    ];
  };
}
