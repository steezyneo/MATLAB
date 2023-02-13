%Generation of Signals 
clc; 
clear all; 
close all; 
 
%SINE  
t1=-8:0.1:8; 
x1=2*sin(2*pi*1*t1); 
subplot(2,2,1); 
plot(t1,x1); 
xlabel('t'); 
ylabel('sine'); 
title('sine wave'); 
 
 
%Unit Step Signal 
t2=[-2:0 0:5];  
x2=[zeros(1,3) ones(1,6)]; 
subplot(2,2,2); 
plot(t2,x2); 
xlabel('t'); 
ylabel('u(t)'); 
title('Unit Step Signal'); 
 
%Ramp 
t3=0:1:100; 
x3=t3; 
subplot(2,2,3); 
plot(t3,x3); 
xlabel('t'); 
ylabel('r(t)'); 
title('Ramp'); 
 
%Unit Parabola Signals 
t4=-100:1:100; 
x4=(1/2)*(t4.^2); 
subplot(2,2,4); 
plot(t4,x4); 
xlabel('t'); 
ylabel('P(t)'); 
title('Unit Parabola Signals'); 
 
figure; 
 
%Unit Impluse 
t5=-10:1:10; 
x5=t5==0; 
subplot(2,2,1); 
plot(t5,x5); 
xlabel('t'); 
ylabel('O(t)'); 
title('Unit Impluse'); 
 
%Exponential  
t6=0:1:10; 
x6=exp(t6); 
subplot(2,2,2); 
plot(t6,x6); 
xlabel('t'); 
ylabel('x(t)'); 
title('Exponential'); 
 
%Rectangular pulse 
t7=-10:1:10; 
x7=rectpuls(t7,4); 
subplot(2,2,3); 
plot(t7,x7); 
xlabel('t'); 
ylabel('pi(t)'); 
title('Rectangular pulse'); 
 
%Sinc Function 
t8=-10:0.1:10; 
x8=sinc(t8); 
subplot(2,2,4); 
plot(t8,x8); 
xlabel('t'); 
ylabel('x(t)'); 
title('sinc Function'); 
 
figure; 
%Gaussian Function 
t9=-10:0.01:10; 
x9=exp(-2*((t9).^2)); 
subplot(2,2,1); 
plot(t9,x9); 
xlabel('t'); 
ylabel('x(t)'); 
title('Gaussian Function'); 
 
%Triagular Pulse 
t10=-10:1:10; 
x10=tripuls(t10,5); 
subplot(2,2,2); 
plot(t10,x10); 
xlabel('t'); 
ylabel('x(t)'); 
title('Triagular Pulse');