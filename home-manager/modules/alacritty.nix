{ 
    programs.alacritty = {
        enable = true;
    
        settings = {
            window = {
                opacity = 1;
                blur = true;
            };
    
            font = {
                size = 15;
                normal.family = "JetBrains Mono";
                normal.style = "Bold";
            };
    
            cursor.style = {
                shape = "Beam";
                blinking = "On";
            };
        };
    };
}
