clc;
close all;

N = input('enter sequence length');
num = input('enter numerator coefficient');
den = input('enter denominator coefficient');
n = 0:1:N-1;  %0:1:10-1
x = [ones(1, 1), zeros(1, N-1)];
h = filter(num, den, x);

stem(n, h);
disp(h);  %cmd window
xlabel('n');
ylabel('h(n)');
title('impulse response');
