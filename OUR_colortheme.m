function OUR_colortheme(varargin)
colortheme_process_inputs_subroutine
mypath = erase(mfilename("fullpath"), "\OUR_colortheme");

color1 = [255 255 0]/255;
color2 = [150 100   0]/255;


BACKGROUND_COLOR = [100 5 5]/255;
AXES_COLOR         = [255 150 0]/255;


NEW_COLORORDER     = create_colormap(color1, color2, number_of_hues);
NEW_COLORMAP       = create_colormap(color2, color1, 256);
[BACKGROUND_IMAGE, ~, ALPHA] = imread(mypath+"\Documentation\our_colortheme_background.png");

colortheme_assign_colors_subroutine




end