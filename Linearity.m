%VERIFICATION OF LINERARITY OF DISCRETE SYSTEM
clc;
clear all;
close all;
%entering two imput sequences and impulse sequence
x1 = input(' type the samples of x1 ');
x2 = input(' type the samples of x2 ');
if(length(x1) ~=length(x2))
    disp('error: Lenghts of x1 and x2 are different');
    return;
end;

h = input(' type the samples of h ');
%length of output sequence
N = length(x1)+length(h)-1;
disp('length of the output signal will be');
disp(N);
%entering scaling factors
a1 = input('The scale factor a1 is ');
a2 = input('The scale factor a21 is ');
x = a1*x1+a2*x2;
%response of x and x1
yo1 = conv(x,h);
y1 = conv(x1,h);

%scaled response of x1;
y1s = a1*y1;
%response of x2
y2 = conv(x2,h);

%scaled response of x2;
y2s = a2*y2;
yo2 = y1s+y2s;
disp('Input signal x1 is '); disp(x1);
disp('Input signal x2 is '); disp(x2);
disp('Output sequence yo1 is '); disp(yo1);
disp('Output sequence yo2 is '); disp(yo2);

if(yo1 == yo2)
    disp('yo1=yo2. Hence the LTI systen us LINEAR')
end;
