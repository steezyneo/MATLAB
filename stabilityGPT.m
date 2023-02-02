b = [1, -0.5]; % numerator coefficients
a = [1, 0.9]; % denominator coefficients

[h, n] = impz(b, a); % impulse response and time index

stem(n, h); % plot the impulse response
xlabel('n');
ylabel('h(n)');
title('Impulse response of the system');
