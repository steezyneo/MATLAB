%VERIFICATION OF TIME INVARIANCE OF DTS

clc;
clear all;
close all;
%entering two input sequences
x=input('Type the samples of signal x(n)');
h=input('Type the samples of signal h(n)');
%original response
y=conv(x,h);
disp('Enter a POSITIVE number for delay');
d = input('Desired delay of the signal is');

%delayed input
xd = [zeros(1,d), x];
nxd = 0:length(xd)-1;
yd=conv(xd, h);

nyd = 0:length(yd)-1;
disp('Original Input Signal x(n) is ');
disp(x);
disp('Delayed Input Signal xd(n) is  ');
disp(xd);
disp('original Output Signal y(n) is ');
disp(y);

disp('Delayed Output Signal yd(n) is ')
disp(yd);
xp=[x, zeros(1,d)];

subplot(2,1,1);
stem(nxd, xp);
grid; 
xlabel('Time Index n');
ylabel('x(n) ')

title('original Input Signal x(n) ');
subplot(2,1,2);
stem(nxd,xd);
grid;
xlabel('Time Index n');
ylabel('xd(n)');
title('Delayed Input Signal xd(n) ');
yp = [y zeros(1,d)];

figure;
subplot(2,1,1);
stem(nyd,yp);

grid;
xlabel('Time Index n ');
ylabel('y(n) ');
title(' Original Output Signal y(n) ');

subplot(2,1,2);
stem(nyd,yd);
grid;
xlabel('Time Index n ');
ylabel('yd(n) ');
title('Delayed Output Signal yd(n) ');
