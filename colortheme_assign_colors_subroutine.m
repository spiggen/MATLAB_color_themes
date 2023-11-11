for index = 1:numel(graphics)
fig = graphics(index);
if isprop(fig, "defaultaxescolor"); fig.defaultaxescolor = BACKGROUND_COLOR_1; end
if isprop(fig, "BackgroundColor");  fig.BackgroundColor  = BACKGROUND_COLOR_1; end
%if isprop(fig, "ForegroundColor");  fig.ForegroundColor  = axis_color;         end
%if isprop(fig, "EdgeColor");        fig.EdgeColor        = AXES_COLOR;         end
if isprop(fig, "TextColor");        fig.TextColor        = AXES_COLOR;         end
if isprop(fig, "FontColor");        fig.FontColor        = AXES_COLOR;         end
%if isprop(fig, "HighlightColor");   fig.HighlightColor   = axis_color;         end
if isprop(fig, "BorderColor");      fig.BorderColor      = AXES_COLOR;         end
if isprop(fig, "Color");            fig.Color            = BACKGROUND_COLOR_2; end
if isprop(fig, "XColor");           fig.XColor           = AXES_COLOR;         end
if isprop(fig, "YColor");           fig.YColor           = AXES_COLOR;         end
if isprop(fig, "ZColor");           fig.ZColor           = AXES_COLOR;         end
if isprop(fig, "ColorOrder")   
   set(fig,'ColorOrder',NEW_COLORORDER,'nextplot','replacechildren');          end
if isprop(fig, "Colormap")     
   set(fig,'Colormap',  NEW_COLORMAP);                                         end
if isprop(fig, "NextPlot") && isequal(class(fig), 'matlab.graphics.axis.Axes')   
   set(fig,'NextPlot',  "replacechildren");                          end
if isprop(fig, "Color") && isequal(class(fig), 'matlab.graphics.primitive.Text')   
                                    fig.Color            = AXES_COLOR;         end
if (isequal(class(fig),  'matlab.ui.control.UIAxes') | isequal(class(fig),  'matlab.graphics.axis.Axes')) && ...
    exist("BACKGROUND_IMAGE", "var")
hold(fig, "on")

h = image(fig, xlim,-ylim,BACKGROUND_IMAGE); 
uistack(h,'bottom')
hold(fig, "off")
end
%if isprop(fig, "NextPlot") && isequal(class(fig), matlab.ui.Figure')   
%                                set(fig,'NextPlot',  "new");disp(fig);end
end