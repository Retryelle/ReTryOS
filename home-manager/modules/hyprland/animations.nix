{
  wayland.windowManager.hyprland.settings = {
    bezier = [
      "soft, 0.25, 1, 0.5, 1"
    ];
    
    animations = {
      enabled = true;
      first_launch_animation = false;
      workspace_wraparound = false;
      
      animation = [
        "workspaces, 1, 4, soft, slide"
        
        "windowsIn, 1, 4, soft, slide bottom"
        "windowsOut, 1, 4, soft, slide bottom"

        "layersIn, 1, 4, soft, slide bottom"
        "layersOut, 1, 4, soft, slide bottom"

        "windowsMove, 1, 4, soft, slide"
      ];
    };
  };
}
