clc;
clear all;
close all;

t=-10:0.01:10;
x=rectpuls(t,2)+j*sin(t);

xr=real(x);
subplot(2,2,1);
plot(t,xr);
xlabel('t');
ylabel('xr');
title('real part');

xi=imag(x);
subplot(2,2,2);
plot(t,xi);
xlabel('tv');
ylabel('xi');
title('imaginary part');


z1=abs(x);
subplot(2,2,3);
plot(t,z1);
xlabel('t');
ylabel('z1');
title('magnitude');

z2=angle(x);
subplot(2,2,4);
plot(t,z2);
xlabel('t');
ylabel('z2');
title('phase');