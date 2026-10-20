clear all;
close all;
clc;

% Chapter 2 - Even and Odd Functions

t = -5:0.1:5;

ge = (g(t) + g(-t))/2;
go = (g(t) - g(-t))/2;

subplot(2,1,1);
plot(t,ge,'k');
xlabel('Time');
ylabel('ge(t)');
title('Even Component');
grid on;

subplot(2,1,2);
plot(t,go,'k');
xlabel('Time');
ylabel('go(t)');
title('Odd Component');
grid on;

function y = g(x)
y = x.*(x.^2+3);
end
