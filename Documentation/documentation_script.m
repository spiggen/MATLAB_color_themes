mypath = erase(mfilename("fullpath"), "documentation_script");

myaxes = axes();
plot(0:0.01:10, (10:-0.5:1)'*sin(0:0.01:10), "LineWidth",1.2)
saveplot(mypath+"ouch_my_eyes_1.png", myaxes);

fireflies();
saveplot(mypath+"fireflies_1.png", myaxes);

fireflies("ColorSamples", 5);
saveplot(mypath+"fireflies_ColorSamples_1.png", myaxes);
cla

figure()
myaxes2 = axes();
plot(0:0.01:10, (10:-0.5:1)'*sin(0:0.01:10), "LineWidth",1.2)

borealis();
saveplot(mypath+"borealis_1.png", myaxes2);

dark_mode();
saveplot(mypath+"dark_mode_1.png", myaxes2);

dark_mode2();
saveplot(mypath+"dark_mode2_1.png", myaxes2);


sangbok();
saveplot(mypath+"sangbok_1.png", myaxes2);


cla
figure()
myaxes3 = axes();

membrane()
fireflies();
saveplot(mypath+"fireflies_membrane_1.png", myaxes3);


myapp = rear_axel_dashboard;
fireflies;



figure()
myplot1 = subplot(1,2,1);
plot(0:0.1:10, sin(0:0.1:10));
myplot2 = subplot(1,2,2);
plot(0:0.1:10, cos(0:0.1:10));

borealis( "Figure", myplot2)
fireflies("Figure", myplot1)