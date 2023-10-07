function map = create_colormap(varargin)
number_of_colors = numel(varargin)-1;
colors = NaN(number_of_colors,3);

for color_index = 1:number_of_colors
colors(color_index,:) = varargin{color_index};
end
colormap_length = varargin{end};


map = ones(colormap_length,1)*colors(end,:);
indexes_per_color = floor(colormap_length/(number_of_colors-1));
start_index = 1;
end_index = start_index + indexes_per_color;
for color_index = 1:number_of_colors-1

map(start_index:end_index,1) = linspace(colors(color_index,1), colors(color_index+1,1), end_index-start_index +1)';
map(start_index:end_index,2) = linspace(colors(color_index,2), colors(color_index+1,2), end_index-start_index +1)';
map(start_index:end_index,3) = linspace(colors(color_index,3), colors(color_index+1,3), end_index-start_index +1)';

start_index = end_index;
end_index = start_index + indexes_per_color;
end



end