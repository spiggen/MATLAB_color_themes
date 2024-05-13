function NEW_COLORMAP = fireflies(varargin)

colortheme_process_inputs_subroutine

color1 = [245 255 20 ]/255;
%color1 = [244 217 20]/255;
color2 = [236 122 0  ]/255;
color3 = [175 7   89 ]/255;
color4 = [90  0   120]/255;
color5 = [0   0   0  ]/255;
%color5 = [0 0 0];


BACKGROUND_COLOR   = [20  15 50]/255;
AXES_COLOR         = [120 5 130]/255;
TEXT_COLOR         = [250 50 200]/255;

NEW_COLORORDER     = create_colormap(color1, color2, color3, color4, color5, number_of_hues);
NEW_COLORMAP       = create_colormap(color5, color4, color3, color2, color1, 256);

%NEW_COLORMAP(end,:) = [1 1 1];
if exist("GRID","var") == false
GRID = true;
end

colortheme_assign_colors_subroutine


end