clear all;
close all;
clc;

% Chapter 2 - Rectangle Function

t = -2:0.01:2;
y = rect(t);

plot(t,y,'k');
xlabel('Time');
ylabel('rect(t)');
title('Rectangle Function');
grid on;

disp(rect([-1 -0.5 0 0.5 1]));

function y = rect(x)
y = us(x+0.5) - us(x-0.5);
end

function y = us(x)
y = (sign(x) + 1)/2;
end