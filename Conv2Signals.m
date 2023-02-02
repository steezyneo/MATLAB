%Convolution of two signals
clc;
clear all;
close all;

t=0:0.01:pi;
y1=sin(2*pi*t);
subplot(3,1,1);
plot(y1);
xlabel('t');
ylabel('y1');
title('sine signal');

y2=cos(2*pi*t);
subplot(3,1,2);
plot(y2);
xlabel('t');
ylabel('y1');
title('cosine signal');

h=conv(y1, y2);
subplot(3,1,3);
plot(h);
xlabel('t');
ylabel('y1');
title('convolution of two signals');


