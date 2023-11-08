my_app = app1;
my_axes = my_app.UIAxes;
fireflies();
axis(my_axes,"equal");
axis(my_axes,"tight");
x = 0:0.01:10;


c1 = {[x;x;x], [1;2;3]*ones(1,numel(x)), 45,45};
c2 = {[x;x;x]+pi, [1;2;3]*ones(1,numel(x)), 45+30,45};
c2 = {[x;x;x]+pi, [1;2;3]*ones(1,numel(x)), 45+30,45};

c_list = {c1,c2,c1};

while true
for index = 1:numel(c_list)-1
animate(@(c)plotfun(my_axes, c{1},c{2},c{3},c{4}), c_list{index}, c_list{index+1})
end
end

function plotfun(ax,x,y,az,el)
z = [sin(x(1,:));
     cos(x(2,:));
     sin(2*x(3,:))];

plot3(ax, x',y',z');
view(ax,az,el);
end