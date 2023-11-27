if exist("TEXT_COLOR", "var") == false
TEXT_COLOR = AXES_COLOR;
end

for index = 1:numel(graphics)
fig = graphics(index);
if isprop(fig, "BackgroundColor");  fig.BackgroundColor  = BACKGROUND_COLOR;   end
if isprop(fig, "BackgroundColor");  fig.BackgroundColor  = BACKGROUND_COLOR;   end
if isprop(fig, "TextColor");        fig.TextColor        = TEXT_COLOR;         end
if isprop(fig, "GridColor");        fig.GridColor        = AXES_COLOR;
                                    fig.GridAlpha        = 0.7;                end
if isprop(fig, "FontColor");        fig.FontColor        = TEXT_COLOR;         end
if isprop(fig, "BorderColor");      fig.BorderColor      = AXES_COLOR;         end
if isprop(fig, "Color");            fig.Color            = BACKGROUND_COLOR;   end
if isprop(fig, "XColor");           fig.XColor           = AXES_COLOR;         end
if isprop(fig, "YColor");           fig.YColor           = AXES_COLOR;         end
if isprop(fig, "ZColor");           fig.ZColor           = AXES_COLOR;         end
if isprop(fig, "ColorOrder")   
   set(   fig,'ColorOrder',NEW_COLORORDER,'nextplot','replacechildren');       end
if isprop(fig, "Colormap")     
   set(   fig,'Colormap',  NEW_COLORMAP);                                      end
if isprop(fig, "NextPlot") && isequal(class(fig), 'matlab.graphics.axis.Axes')   
   set(   fig,'NextPlot',  "replacechildren");                                 end
if isprop(fig, "Color") && isequal(class(fig), 'matlab.graphics.primitive.Text')   
                                    fig.Color            = AXES_COLOR;         end
if (isequal(class(fig),  'matlab.ui.control.UIAxes') | ...
    isequal(class(fig),  'matlab.graphics.axis.Axes')) && ...
    exist("BACKGROUND_IMAGE", "var")
hold(fig, "on")

h = image(fig, xlim,-ylim,BACKGROUND_IMAGE); 
uistack(h,'bottom')
hold(fig, "off")
end
if contains(class(fig), "Text") && isprop(fig, "Color")
fig.Color            = TEXT_COLOR;   
end

if exist("GRID", "var")
if GRID && isprop(fig, "XGrid"); fig.XGrid = "on"; fig.YGrid = "on";
end
end

end