{ pkgs, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;

    xwayland.enable = true;
    
    settings = {
      general = {
        border_size = 2;
        no_border_on_floating = false;
        
        gaps_in = 4;
        gaps_out = 8;
        float_gaps = 0;
        gaps_workspaces = 0;
        
        "col.inactive_border" = "rgb(108,112,134)";
        "col.active_border" = "rgb(137,180,250)";
        # "col.nogroup_border" = "";
        # "col.nogroup_border_active" = "";
        
        layout = "dwindle";
        
        no_focus_fallback = true;
        resize_on_border = false;
        extend_border_grab_area = 0;
        hover_icon_on_border = false;
        allow_tearing = false;
        resize_corner = 0;
        
        snap = {
          enabled = false;
          window_gap = 0;
          monitor_gap = 0;
          border_overlap = false;
          respect_gaps = false;
        };
      };
    };
  };
}
