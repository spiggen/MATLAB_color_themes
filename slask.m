my_app = app1;
my_axes = my_app.UIAxes;
dark_mode2();
axis(my_axes,"equal");
axis(my_axes,"tight");


c1 = {0:0.01:10,  0:0.01:10,           cos(0:0.01:10),       0, 0};
c2 = {0:0.01:10,  0:0.01:10,           cos(2*(0:0.01:10)),   0, 0};
c4 = {0:0.01:10,  0:0.01:10,           atan(-5:0.01:5),      0, 0};
c5 = {0:0.01:10,  cos(0:0.01:10),      sin((0:0.01:10)),     0, 0};
c6 = {0:0.01:10,  cos(0:0.01:10),      sin((0:0.01:10)),     45, 45};
c7 = {0:0.01:10,  cos(10*(0:0.01:10)), sin(10*(0:0.01:10)),  45, 45};
c8 = {0:0.01:10,  cos(10*(0:0.01:10)), 0*(0:0.01:10),        45, 45};
c9 = {0:0.01:10,  cos(10*(0:0.01:10)), 0*(0:0.01:10),        0, 90};
c10 = {0:0.01:10, cos(0:0.01:10),      0*(0:0.01:10),        0, 90};
c_list = {c1,c2,c4,c5,c6,c7,c8,c9,c10,c1};

while true
for index = 1:numel(c_list)-1
animate(@(c)plotfun(my_axes,c{1},c{2},c{3},c{4},c{5}), c_list{index}, c_list{index+1})
end
end

function plotfun(ax,x,y,z,az,el)
plot3(ax,x,y,z);
view(ax,az,el);

end