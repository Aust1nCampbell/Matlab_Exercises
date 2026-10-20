clear all;
close all;
clc;

% Chapter 3 - Discrete-Time Signum Function

n = -5:5;
y = signD(n);

stem(n,y,'k','filled');
xlabel('n');
ylabel('sign[n]');
title('Discrete-Time Signum');
grid on;

disp([n' y']);

function y = signD(n)
y = sign(n);
I = find(round(n) ~= n);
y(I) = NaN;
end
