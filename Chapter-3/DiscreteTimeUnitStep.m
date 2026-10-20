clear all;
close all;
clc;

% Chapter 3 - Discrete-Time Unit-Step Function

n = -5:5;
y = usD(n);

stem(n,y,'k','filled');
xlabel('n');
ylabel('u[n]');
title('Discrete-Time Unit-Step');
grid on;

disp([n' y']);

function y = usD(n)
y = double(n >= 0);
I = find(round(n) ~= n);
y(I) = NaN;
end
