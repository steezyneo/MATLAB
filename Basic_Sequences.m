%Generation of Signals 
clc; 
clear all; 
close all; 
 
%Discrete SINE  
t1=-18:1:18; 
x1=2*sin(2*pi*1*t1); 
subplot(2,2,1); 
stem(t1,x1); 
xlabel('Discrete Time'); 
ylabel('sine'); 
title('Discrete sine wave'); 
 
 
%Discrete Unit Step Signal 
t2=[-2:0 0:5];  
x2=[zeros(1,3) ones(1,6)]; 
subplot(2,2,2); 
stem(t2,x2); 
xlabel('Discrete Time'); 
ylabel('u(t)'); 
title('Discrete Unit Step Signal'); 
 
%Discrete Ramp 
t3=0:1:50; 
x3=t3; 
subplot(2,2,3); 
stem(t3,x3); 
xlabel('Discrete Time'); 
ylabel('r(t)'); 
title('Discrete Ramp'); 
 
%Discrete Unit Parabola Signals 
t4=-50:2:50; 
x4=(1/2)*(t4.^2); 
subplot(2,2,4); 
stem(t4,x4); 
xlabel('Discrete Time'); 
ylabel('P(t)'); 
title('Discrete Unit Parabola Signals'); 
 
figure; 
 
%Discrete Unit Impluse 
t5=-10:1:10; 
x5=t5==0; 
subplot(2,2,1); 
stem(t5,x5); 
xlabel('Discrete Time'); 
ylabel('O(t)'); 
title('Discrete Unit Impluse'); 
 
%Discrete Exponential  
t6=0:1:10; 
x6=exp(t6); 
subplot(2,2,2); 
stem(t6,x6); 
xlabel('Discrete Time'); 
ylabel('x(t)'); 
title('Discrete Exponential'); 
 
%Discrete Rectangular pulse 
t7=-10:1:10; 
x7=rectpuls(t7,4); 
subplot(2,2,3); 
stem(t7,x7); 
xlabel('Discrete Time'); 
ylabel('pi(t)'); 
title('Discrete Rectangular pulse'); 
 
%Discrete Sinc Function 
t8=-10:1:10; 
x8=sinc(t8); 
subplot(2,2,4); 
stem(t8,x8); 
xlabel('Discrete Time'); 
ylabel('x(t)'); 
title('Discrete sinc Function'); 
 
figure; 
%Discrete Gaussian Function 
t9=-10:1:10; 
x9=exp(-2*((t9).^2)); 
subplot(2,2,1); 
stem(t9,x9); 
xlabel('Discrete Time'); 
ylabel('x(t)'); 
title('Discrete Gaussian Function'); 
 
%Discrete Triagular Pulse 
t10=-10:1:10; 
x10=tripuls(t10,5); 
subplot(2,2,2); 
stem(t10,x10); 
xlabel('Discrete Time'); 
ylabel('x(t)'); 
title('Discrete Triagular Pulse');