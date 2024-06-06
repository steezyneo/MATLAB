clc;
close all;

N = input('enter sequence length');
num = input('enter numerator coefficient');
den = input('enter denominator coefficient');
n = 0:1:N-1;  %0:1:10-1
x = [ones(1, N)];
s = filter(num, den, x);

stem(n, s);
disp(s);  %cmd window
xlabel('n');
ylabel('s(n)');
title('Step response');
