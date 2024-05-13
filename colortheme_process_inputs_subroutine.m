
for arg_nr = 1:numel(varargin)
if isequal(varargin{arg_nr}, "Figure")
graphics = varargin{arg_nr + 1};
elseif isequal(varargin{arg_nr}, "ColorSamples")
number_of_hues = varargin{arg_nr + 1};
elseif isequal(varargin{arg_nr}, "Scramble")
scramble = varargin{arg_nr + 1};
elseif isequal(varargin{arg_nr}, "Grid")
GRID = varargin{arg_nr + 1};
end
end



number_of_drawings = 0;

if numel(findall(groot)) < 2; axes(); end

if exist("graphics", "var") == false
    objects  = findall(groot);
    graphics = objects(1:2);

    for i = 1:numel(objects)
    if (contains(class(objects(i)), 'matlab.graphics') && contains(class(objects(i)),'matlab.graphics.chart.primitive') == false ) ...
     || contains(class(objects(i)), 'matlab.ui.control')...
     || contains(class(objects(i)), 'matlab.ui.Figure') ...
     || contains(class(objects(i)), 'matlab.ui.container.Panel') ...
     || contains(class(objects(i)), 'matlab.graphics.chart.primitive.Contour')
    graphics(i) = objects(i) ;
    end
    if contains(class(objects(i)),'matlab.graphics.chart.primitive')
    number_of_drawings = number_of_drawings + 1;
    end
    end
    
end
if number_of_drawings == 0; number_of_drawings = 5;end
if exist("number_of_hues", "var") == false; number_of_hues = number_of_drawings;end
if exist("scramble", "var") == false; scramble = false; end
disp(scramble)