clc;
close all;
num = input('enter num coefl');
den = input('enter den coefl');
N = input('enter no. of frequency points');
w = 0:pi/N:pi;
h = freqz(num, den, w);

figure;
subplot(2,1,1);
plot(w/pi, real(h));
xlabel('w/pi');
ylabel('amplitude');
title('real part');

subplot(2,1,2);
plot(w/pi, imag(h));
xlabel('w/pi');
ylabel('amplitude');
title('imaginary part');

figure;
subplot(2,1,1);
plot(w/pi, abs(h));
xlabel('w/pi');
ylabel('amplitude');
title('magnitude spectrum');

subplot(2,1,2);
plot(w/pi, angle(h));
xlabel('w/pi');
ylabel('angle');
title('phase spectrum');
