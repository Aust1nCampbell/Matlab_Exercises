clear all;
close all;
clc;

% Chapter 3 - Discrete-Time Ramp Function

n = -5:5;
y = rampD(n);

stem(n,y,'k','filled');
xlabel('n');
ylabel('r[n]');
title('Discrete-Time Ramp');
grid on;

disp([n' y']);

function y = rampD(n)
y = ramp(n);
I = find(round(n) ~= n);
y(I) = NaN;
end

function y = ramp(x)
y = x.*us(x);
end

function y = us(x)
y = (sign(x) + 1)/2;
end
