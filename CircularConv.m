clc;
close all;

x = input('Enter the input sequence: '); 
h = input('Enter the impulse response: '); 

n1 = length(x); 
m = 0:1:n1-1;

n2 = length(h); 
n = 0:1:n2-1;

p = max(n1, n2); 
r = 0:1:p-1;

subplot(3,1,1); 
stem(m, x); 
xlabel('samples'); 
ylabel('amplitude'); 
title('Input Sequence'); 

subplot(3,1,2); 
stem(n, h); 
xlabel('samples'); 
ylabel('amplitude'); 
title('Impulse Response'); 

y = cconv(x, h, p);

subplot(3,1,3); 
stem(r, y); 

disp('Circular Convolution of x and h is:'); 
display(y); 

xlabel('samples'); 
ylabel('amplitude'); 
title('Circular Convolution');
