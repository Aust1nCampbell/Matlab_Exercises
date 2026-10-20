clear all;
close all;
clc;

% Chapter 3 - Discrete-Time Impulse Function

n = -5:5;
y = impD(n);

stem(n,y,'k','filled');
xlabel('n');
ylabel('x[n]');
title('Discrete-Time Impulse');
grid on;

disp([n' y']);

function y = impD(n)
y = double(n == 0);
I = find(round(n) ~= n);
y(I) = NaN;
end
