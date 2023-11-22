function NEW_COLORMAP = dark_mode(varargin)

colortheme_process_inputs_subroutine


color1 = [255 0 0]/255;
color2 = [255 255   255]/255;



BACKGROUND_COLOR   = [31 31 31]/255;
AXES_COLOR         = [255 255 255]/255;


NEW_COLORORDER     = create_colormap(color1, color2, number_of_hues);
NEW_COLORMAP       = create_colormap(color2, color1, 256);



colortheme_assign_colors_subroutine


end