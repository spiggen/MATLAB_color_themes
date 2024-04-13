function crisp(varargin)

colortheme_process_inputs_subroutine

color1 = [0   100   100  ]/255;
color2 = [0 0 0]/255;

BACKGROUND_COLOR = [0 0 0]/255;
AXES_COLOR       = [255 255 255]/255;

NEW_COLORORDER     = create_colormap(color1, color2, number_of_hues);
NEW_COLORMAP       = create_colormap(color2, color1, 256);

if exist("GRID","var") == false
GRID = true;
end

colortheme_assign_colors_subroutine

end