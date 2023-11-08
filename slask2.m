my_app = app1;
my_axes = my_app.UIAxes;
fireflies();
axis(my_axes,"equal");
axis(my_axes,"tight");

[x,y] = meshgrid(-5:0.1:5, -5:0.1:5);
c1 = {x,y,sin(sqrt((x.^2)+(y.^2))), 45, 45};
c2 = {x,y,sin(10*sqrt((x.^2)+(y.^2))), 20,45};

c_list = {c1,c2,c1};

while true
for index = 1:numel(c_list)-1
animate(@(c)plotfun(my_axes,c{1},c{2},c{3},c{4},c{5}), c_list{index}, c_list{index+1})
end
end

function plotfun(ax,x,y,z,az,el)
surf(ax,x,y,z, "EdgeColor","none");
view(ax,az,el);

end