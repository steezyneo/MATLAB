%even and odd function 
clc;
clear all; 
close all; 

t=-10:0.01:10; 
y0=y(t); 
y1=y(-t); 

subplot(2,2,1);
plot(t,y0); 
xlabel('t');
ylabel('Amplitude')
title('Input Signal')

subplot(2,2,2);
plot(t,y1); 
xlabel('t');
ylabel('Amplitude'); 
title('Input Siganl with t=-t')

ye=(y0+y1)/2; 
yd=(y0-y1)/2; 

subplot(2,2,3);
plot(t,ye); 
xlabel('t');
ylabel('Amplitude');
title('Even part of siganl');

subplot(2,2,4);
plot(t,yd); 
xlabel('t');
ylabel('Amplitude'); 
title('Odd part of siganl');

function x=y(t); 
x1=4; 
x2=2; 
x=x1.* (0<t&t<=2)+x2.*(2<t&t<=4); 
end
