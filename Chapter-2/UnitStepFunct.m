
clear all;
close all;
clc;

% Chapter 2 - Unit Step Function

t = -5:0.01:5;
y = us(t);

plot(t,y,'k');
xlabel('Time');
ylabel('u(t)');
title('Unit Step Function');
grid on;

% Check values at -1, 0, and 1
disp(us([-1 0 1]));

function y = us(x)
y = (sign(x) + 1)/2;
end
