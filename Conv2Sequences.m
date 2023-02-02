%Convolution of two given Sequences
clc;
clear all;
close all;

x=[1,2,1,2,1,3,2];
N1=length(x);
n=0:1:N1-1;
subplot(2,2,1);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('input sequence of x(n)');

h=[1,-1,2,-2,1,1];
N2=length(h);
n1=0:1:N2-1;
subplot(2,2,2);
stem(n1,h);
xlabel('n');
ylabel('h(n)');
title('impulse sequence of x(n)');

y=conv(x,h);
n2=0:1:N1+N2-2;
subplot(2,1,2);
stem(n2,y);
xlabel('n');
ylabel('y(n)');
title('convolution of two sequences of x(n) and h(n)');