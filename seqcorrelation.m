%cross correlation 0f two sequences
clc;
clear all;
close all;
n=-10:1:10;
x1=cos(3*pi*n);
subplot(3,2,1);
stem(n,x1);
xlabel('n');
ylabel('x1');
title('cosine');
x2=sign(n);
subplot(3,2,2);
stem(n,x2);
xlabel('n');
ylabel('x2');
title('signum');
y=xcorr(x1,x2);
subplot(3,2,3);
stem(y);
xlabel('n');
ylabel('y(n)');
title('cross correlation');
y1=xcorr(x1,x1);
subplot(3,2,4);
stem(y1);
xlabel('n');
ylabel('y1(n)');
title('auto correlation');
figure;