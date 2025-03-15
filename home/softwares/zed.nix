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
        ui_font_family = ".SystemUIFont";
        ui_font_size = 14;
        buffer_font_size = 12;
        relative_line_numbers = true;
        file_finder = {
          modal_width = "medium";
        };
        load_direnv = "direct";
      };
    };
  };
}
