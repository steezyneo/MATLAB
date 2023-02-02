clc;
clear all;
close all;
%given difference equatiuon y(n)-y(n-1)+.9y(n-2)=x(n);
b=[1];
a=[1,-1,.9];
n=0:3:100;

%generating impulse signal
x1=(n==0);
%impulse response
h1=filter(b,a,x1);
subplot(3,1,1);
stem(n,h1);
xlabel('n');
ylabel('h(n)');
title('impulse signal');

%generating step signal
x2=(n>0);
%step response
s=filter(b,a,x2);
subplot(3,1,2);
stem(n,s);
xlabel('n');
ylabel('s(n)');
title('step response');

%generating sinusoidal signal
t=0:0.1:2*pi;
x3=sin(t);
%sinusoidal response
h2=filter(b,a,x3);
subplot(3,1,3);
stem(h2);
xlabel('n');
ylabel('h(n)');
title('sin response');

%verifying stability
figure;
zplane(b,a);