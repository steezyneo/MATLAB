clc;
clear all;
close all;

t=0:0.1:(pi*8);
y=sin(t);
subplot(5,1,1);
plot(t,y);
xlabel('k');
ylabel('amplitude');
title('gibbs phenomenon');

h=2;
for k=3:2:9
    y=y+sin(k*t)/k;
    subplot(5,1,h);
    plot(t,y);
    xlabel('k');
    ylabel('amplitude');
    h=h+1;
end
