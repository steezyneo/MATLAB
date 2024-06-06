clc;
close all;

x = input('enter the input sequence: ');
h = input('enter the impulse response: ');

n1 = length(x); % n1 = 3
m = 0:1:n1-1;   % m = 0 1 2

n2 = length(h); % n2 = 2
n = 0:1:n2-1;

p = n1 + n2 - 1;% p = 4
r = 0:1:p-1;    % r = 0 1 2 3

subplot(3,1,1);
stem(m, x);
xlabel('samples');
ylabel('amplitude');
title('input sequence'); 

subplot(3,1,2); 
stem(0:n2-1, h); 
xlabel('samples'); 
ylabel('amplitude');
title('impulse response'); 

y = conv(x, h);

subplot(3,1,3);
stem(r, y);

disp('Convolution of x and h is:');
display(y');

xlabel('samples');
ylabel('amplitude');
title('linear convolution');
