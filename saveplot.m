function saveplot(filename, axes)
if exist("axes", "var") == false; axes = gca;end
exportgraphics(axes, filename, ...
               'Resolution',        300, ...
               'BackgroundColor',   get(axes, "Color"))
end