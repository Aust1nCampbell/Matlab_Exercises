clear all;
close all;
clc;

% Chapter 2 - Ramp Function

t = -5:0.01:5;
y = ramp(t);

plot(t,y,'k');
xlabel('Time');
ylabel('r(t)');
title('Ramp Function');
grid on;

disp(ramp([-1 0 1]));

function y = ramp(x)
y = x.*us(x);
end

function y = us(x)
y = (sign(x) + 1)/2;
end
