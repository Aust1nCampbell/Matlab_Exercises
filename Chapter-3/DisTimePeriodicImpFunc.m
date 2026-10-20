
clear all;
close all;
clc;

% Chapter 3 - Discrete-Time Periodic Impulse

n = -15:15;
N = 5;

y = impND(N,n);

stem(n,y,'k','filled');
xlabel('n');
ylabel('x[n]');
title('Discrete-Time Periodic Impulse');
grid on;

disp([n' y']);

function y = impND(N,n)
if N == round(N) && N > 0
    y = double(n/N == round(n/N));
    I = find(round(n) ~= n);
    y(I) = NaN;
else
    y = NaN*n;
    disp('N must be a positive integer');
end
end
