x = input('Enter the samples of the input signal x(n): ');
h = input('Enter the samples of the impulse response h(n): ');

% Compute the original output signal y(n)
y = conv(x, h);

% Compute the delayed input signal xd(n)
d = input('Enter the desired delay (positive integer): ');
xd = [zeros(1, d), x];

% Compute the delayed output signal yd(n)
yd = conv(xd, h);

% Plot the original and delayed input signals
figure;
subplot(2, 1, 1);
stem(x);
title('Original Input Signal x(n)');
xlabel('Time index n');
ylabel('Amplitude');

subplot(2, 1, 2);
stem(xd);
title('Delayed Input Signal xd(n)');
xlabel('Time index n');
ylabel('Amplitude');

% Plot the original and delayed output signals
figure;
subplot(2, 1, 1);
stem(y);
title('Original Output Signal y(n)');
xlabel('Time index n');
ylabel('Amplitude');

subplot(2, 1, 2);
stem(yd);
title('Delayed Output Signal yd(n)');
xlabel('Time index n');
ylabel('Amplitude');