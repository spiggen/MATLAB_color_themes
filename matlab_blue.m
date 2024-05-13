function NEW_COLORMAP = matlab_blue(varargin)

colortheme_process_inputs_subroutine


%color1 = [244 217 20]/255;
color1 = [255 143 82]/255;
color2 = [255 53 82]/255;
color3 = [180 180 150]/255;
color4 = [0 255 255]/255;
color5 = [7 55 99]/255;
%color5 = [0 0 0];


BACKGROUND_COLOR   = [7 55 99]/255;
AXES_COLOR         = [150 150 200]/255;
TEXT_COLOR         = [255 255 255]/255;

NEW_COLORORDER     = create_colormap(color1, color2, color3, color4, color5, number_of_hues);
NEW_COLORMAP       = create_colormap(color5, color4, color3, color2, color1, 256);

%NEW_COLORMAP(end,:) = [1 1 1];
if exist("GRID","var") == false
GRID = false;
end

colortheme_assign_colors_subroutine


end