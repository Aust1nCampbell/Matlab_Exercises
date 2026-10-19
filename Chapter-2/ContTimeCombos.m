clear all;
close all;
clc;

% Chapter 2 - Continuous-Time Function Combinations

t = 0:1/240:6;

x1 = exp(-t).*sin(20*pi*t) + exp(-t/2).*sin(19*pi*t);

subplot(2,1,1);
plot(t,x1,'k');
xlabel('Time');
ylabel('x1(t)');
title('The First Signal');
grid on;

t = -2:1/240:2;

x2 = rect(t).*cos(20*pi*t);

subplot(2,1,2);
plot(t,x2,'k');
xlabel('Time');
ylabel('x2(t)');
title('Second Signal');
grid on;

function y = rect(x)
y = us(x+0.5) - us(x-0.5);
end

function y = us(x)
y = (sign(x) + 1)/2;
end
