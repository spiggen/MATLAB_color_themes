function my_colortheme(varargin)

colortheme_process_inputs_subroutine

color1 = [255 255 255]/255;
color2 = [255 0   255]/255;
color3 = [70  0   220]/255;
color4 = [0   0   0  ]/255;

BACKGROUND_COLOR = [15  0 20]/255;
AXES_COLOR       = [250 0 150]/255;

NEW_COLORORDER     = create_colormap(color1, color2, color3, color4, number_of_hues);
NEW_COLORMAP       = create_colormap(color4, color3, color2, color1, 256);

colortheme_assign_colors_subroutine

end