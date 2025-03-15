{...}: {
  networking = {
    computerName = "Mac";
    hostName = "mac";
  };

  system = {
    keyboard = {
      enableKeyMapping = true;
    };
    defaults = {
      NSGlobalDomain = {
        AppleInterfaceStyleSwitchesAutomatically = true;
        AppleShowAllExtensions = true;
        AppleShowAllFiles = true;
        AppleShowScrollBars = "WhenScrolling";
        "com.apple.mouse.tapBehavior" = 1;
        "com.apple.trackpad.scaling" = 1.0;
      };
      WindowManager = {
        EnableTiledWindowMargins = false;
        GloballyEnabled = false;
      };
      controlcenter = {
        AirDrop = true;
        BatteryShowPercentage = true;
        Bluetooth = true;
        Display = false;
        FocusModes = true;
        NowPlaying = true;
        Sound = false;
      };
      dock = {
        largesize = 85;
        tilesize = 55;
        minimize-to-application = true;
        persistent-apps = [
          "/System/Applications/Launchpad.app"
          "/Applications/Safari.app"
          "/Applications/ChatGPT.app"
          "/Applications/Discord.app"
          "/System/Applications/Music.app"
          "/Applications/Spotify.app"
          "/Applications/Telegram.app"
          "/System/Applications/Messages.app"
          "/Applications/Zed.app"
          "/System/Applications/Mail.app"
          "/System/Applications/Maps.app"
          "/System/Applications/Notes.app"
          "/Applications/Pages.app"
          "/System/Applications/Calendar.app"
          "/Applications/Anki.app"
          "/System/Applications/Utilities/Terminal.app"
        ];
      };
      finder = {
        AppleShowAllFiles = true;
        AppleShowAllExtensions = true;
        FXPreferredViewStyle = "Nlsv";
        ShowPathbar = true;
        ShowStatusBar = true;
        _FXSortFoldersFirst = true;
        _FXSortFoldersFirstOnDesktop = true;
      };
      hitoolbox = {
        AppleFnUsageType = "Change Input Source";
      };
      menuExtraClock = {
        ShowDayOfWeek = false;
      };
      screencapture = {
        target = "clipboard";
      };
      trackpad = {
        Clicking = true;
      };
    };
  };
}
