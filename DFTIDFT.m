clc;
close all;

xn = input('Enter the input sequence: ');
L = length(xn);

N = input('Enter the number of samples in DFT: ');
if (N < L)
    error('N must be equal to or greater than L');
end

xk = fft(xn, N);
disp('DFT of given sequence:');
disp(xk);

m = 0:L-1; % Adjusted the length of m to match the length of xn
subplot(3,1,1);
stem(m, xn);
xlabel('n');
ylabel('x(n)');
title('Input Sequence');

m = 0:N-1; % Reset m to its original length
subplot(3,1,2);
stem(m, xk);
xlabel('k');
ylabel('X(k)');
title('DFT of Given Sequence');

xn1 = ifft(xk);
disp('IDFT of given sequence:');
disp(xn1);

p = 0:N-1;
subplot(3,1,3);
stem(p, xn1);
xlabel('n');
ylabel('x(n)');
title('IDFT of Given Sequence');
