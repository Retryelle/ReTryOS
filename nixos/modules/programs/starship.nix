{ pkgs, ... }:
{
  programs.starship = {
    enable = true;
    package = pkgs.starship;
    
    settings = {
      add_newline = true;
      
      format = ''
        [{](bold #cba6f7)$username[@](bold #89dceb)$hostname[}:](bold #cba6f7)[ {](bold #cba6f7)$directory[}](bold #cba6f7)
        $character
      '';

      username = {
        style_root = "bold #f38ba8";
        style_user = "bold #89dceb";
        format = "[$user]($style)";
        show_always = true;
        disabled = false;
      };

      hostname = {
        ssh_only = false;
        ssh_symbol = "{SSH}:";
        trim_at = "";
        format = "[$ssh_symbol$hostname]($style)";
        style = "bold #89dceb";
        disabled = false;
      };

      directory = {
        truncation_length = 0;
        truncate_to_repo = false;
        format = "[$path]($style)[$read_only]($read_only_style)";
        style = "bold #89dceb";
        disabled = false;
        read_only = "{!}";
        read_only_style = "bold #f38ba8";
        truncation_symbol = "";
        home_symbol = "~";
        use_os_path_sep = true;
      };

      character = {
        format = "$symbol";
        success_symbol = "[> ](bold #a6e3a1)";
        error_symbol = "[> ](bold #f38ba8)";
        vimcmd_symbol = "[< ](bold #a6e3a1)";
        vimcmd_replace_one_symbol = "[< ](bold #cba6f7)";
        vimcmd_replace_symbol = "[< ](bold #cba6f7)";
        vimcmd_visual_symbol = "[< ](bold #f9e2af)";
        disabled = false;
      };
    };
  };
}
