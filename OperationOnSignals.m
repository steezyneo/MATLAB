clc;
clear all;
close all;

t=-10:0.01:10;

x=rectpuls(t,4);
subplot(3,1,1);
plot(t,x);
xlabel('t');
ylabel('x');
title('rectangular pulse signal');

%time shifting
x1=rectpuls((t-7),4);
subplot(3,1,2);
plot(t,x1);
xlabel('t');
ylabel('x1');
title('left shifted signal with k=7');

x2=rectpuls((t+9),4);
subplot(3,1,3);
plot(t,x2);
xlabel('t');
ylabel('x2');
title('right shifted signal with k=9');
figure;


%time reversal
x3=exp(t);
subplot(3,1,1);
plot(t,x3);
xlabel('t');
ylabel('x3');
title('exponential signal');

x4=exp(-t);
subplot(3,1,2);
plot(t,x4);
xlabel('t');
ylabel('x4');
title('time reversal signal');
figure;


%time scaling
x5=sin(t);
subplot(3,1,1);
plot(t,x5);
xlabel('t');
ylabel('x5');
title('sine signal');

x6=sin(3*t);
subplot(3,1,2);
plot(t,x6);
xlabel('t');
ylabel('x6');
title('time scaling a=3 signal');

x7=sin(0.5*t)
subplot(3,1,3);
plot(t,x7);
xlabel('t');
ylabel('x7');
title('time scaling a=0.5 signal');
figure;


%amplitude scaling 
x8=tripuls(t,5);
subplot(3,1,1);
plot(t,x8);
xlabel('t');
ylabel('x8');
title('triangular pulse signal');

x9=10*tripuls(t,5);
subplot(3,1,2);
plot(t,x9);
xlabel('t');
ylabel('x9');
title('amplitude scaling A=10 signal');

x10=0.05*tripuls(t,5);
subplot(3,1,3);
plot(t,x10);
xlabel('t');
ylabel('x10');
title('amplitude scaling A=0.05 signal');
figure;


%addition of two signals
y1=sin(3*t);
subplot(2,2,1);
plot(t,y1);
xlabel('t');
ylabel('y1');
title('sine signal ');     

y2=cos(5*t);
subplot(2,2,2);
plot(t,y2);
xlabel('t');
ylabel('y2');
title('cosine signal')

z1=y1+y2;
subplot(2,2,3);
plot(t,z1);
xlabel('t');
ylabel('z1');
title('addition of two signals');


%multiplication of two signals
z2=y1.*y2;
subplot(2,2,4);
plot(t,z2);
xlabel('t');
ylabel('z2');
title('multiplication of two signals');