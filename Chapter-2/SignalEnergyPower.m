clear all;
close all;
clc;

% Chapter 2 - Signal Energy and Power

% Part A - Signal Energy

dt = 0.1;
t = -7:dt:13;

x = 4*exp(-t/10).*rect((t-4)/3);
xsq = x.^2;

Ex = trapz(t,xsq);

disp(['(a) Ex = ',num2str(Ex)]);

% Part B - Signal Power

T0 = 10;

dt = 0.1;
t = -5:dt:5;

x = -3*t;
xsq = x.^2;

Px = trapz(t,xsq)/T0;

disp(['(b) Px = ',num2str(Px)]);

function y = rect(x)
y = us(x+0.5) - us(x-0.5);
end

function y = us(x)
y = (sign(x) + 1)/2;
end
