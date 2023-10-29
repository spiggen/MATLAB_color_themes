
for arg_nr = 1:2:numel(varargin)
if varargin{arg_nr} == "Figure"
graphics = varargin{arg_nr + 1};
elseif varargin{arg_nr} == "ColorSamples"
number_of_hues = varargin{arg_nr + 1};
end
end



number_of_drawings = 0;

if exist("graphics", "var") == false
    objects  = findall(groot);
    graphics = objects(1:2);

    for i = 1:numel(objects)
    if (contains(class(objects(i)), 'matlab.graphics') && contains(class(objects(i)),'matlab.graphics.chart.primitive') == false ) ...
     || contains(class(objects(i)), 'matlab.ui')
    graphics(i) = objects(i) ;
    end
    if contains(class(objects(i)),'matlab.graphics.chart.primitive')
    number_of_drawings = number_of_drawings + 1;
    end
    end
    if number_of_drawings == 0; number_of_drawings = 5; 
    end
    if exist("number_of_hues", "var") == false; number_of_hues = number_of_drawings;
    end
end

if exist("number_of_hues", "var") == false; number_of_hues = 100; end