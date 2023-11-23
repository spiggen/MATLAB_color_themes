mypath = erase(mfilename("fullpath"), "\documentation");

myaxes = axes();
plot(0:0.01:10, (1:10)'*sin(0:0.01:10))
saveplot(mypath+"ouch_my_eyes_1.png", myaxes);

fireflies();
saveplot(mypath+"fireflies_1.png", myaxes);

fireflies("ColorSamples", 2);
saveplot(mypath+"fireflies_ColorSamples_1.png", myaxes);

myaxes2 = axes();
plot(0:0.01:10, (1:10)'*sin(0:0.01:10))

borealis();
saveplot(mypath+"borealis_1.png", myaxes2);

dark_mode();
saveplot(mypath+"dark_mode_1.png", myaxes2);

dark_mode2();
saveplot(mypath+"dark_mode2_1.png", myaxes2);


sangbok();
saveplot(mypath+"sangbok_1.png", myaxes2);



figure()
myaxes3 = axes();

membrane()
fireflies();
saveplot(mypath+"fireflies_membrane_1.png", myaxes3);


