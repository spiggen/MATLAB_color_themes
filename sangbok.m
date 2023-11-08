function sangbok(varargin)

colortheme_process_inputs_subroutine


color1 = [255 150 0]/255;
color2 = [100 0   0]/255;


BACKGROUND_COLOR_1 = [5 5 20]/255;
BACKGROUND_COLOR_2 = [5 5 20]/255;
AXES_COLOR         = [255 150 0]/255;


NEW_COLORORDER     = create_colormap(color1, color2, number_of_hues);
NEW_COLORMAP       = create_colormap(color2, color1, 256);
BACKGROUND_IMAGE = imread("sangbok_background.png");

colortheme_assign_colors_subroutine




end