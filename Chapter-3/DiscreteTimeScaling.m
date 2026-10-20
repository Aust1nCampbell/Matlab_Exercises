clear all;
close all;
clc;

% Chapter 3 - Discrete-Time Signal Scaling

n = -5:48;

g0 = g(n);
g1 = g(2*n);
g2 = g(n/3);

subplot(3,1,1);
stem(n,g0,'k','filled');
xlabel('n');
ylabel('g[n]');
title('Original Signal');
grid on;

subplot(3,1,2);
stem(n,g1,'k','filled');
xlabel('n');
ylabel('g[2n]');
title('Compressed Signal');
grid on;

subplot(3,1,3);
stem(n,g2,'k','filled');
xlabel('n');
ylabel('g[n/3]');
title('Expanded Signal');
grid on;

function y = g(n)
y = 10*(0.8).^n.*sin(3*pi*n/16).*usD(n);
I = find(round(n) ~= n);
y(I) = NaN;
end

function y = usD(n)
y = double(n >= 0);
I = find(round(n) ~= n);
y(I) = NaN;
end