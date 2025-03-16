{pkgs, ...}: {
  programs = {
    zed-editor = {
      enable = true;
      extensions = [
        "nix"
        "toml"
      ];
      extraPackages = [
        pkgs.nixd
      ];
      userSettings = {
        features = {
          copilot = true;
        };
        theme = {
          mode = "system";
          light = "macOS Classic Light";
          dark = "One Dark";
        };
        icon_theme = {
          mode = "system";
          light = "JetBrains New UI Icons (Light)";
          dark = "JetBrains New UI Icons (Dark)";
        };
        ui_font_family = ".SystemUIFont";
        ui_font_size = 14;
        buffer_font_size = 13;
        relative_line_numbers = true;
        file_finder = {
          modal_width = "medium";
        };
        load_direnv = "direct";
      };
    };
  };
}
