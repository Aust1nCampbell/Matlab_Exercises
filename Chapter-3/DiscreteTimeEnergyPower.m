clear all;
close all;
clc;

% Chapter 3 - Discrete-Time Signal Energy and Power

% Part A - Signal Energy

n = -100:100;

x = (0.9).^abs(n).*sin(2*pi*n/4);
xsq = x.^2;

Ex = sum(xsq);

disp(['(b) Ex = ',num2str(Ex)]);

% Part B - Signal Power

N0 = 35;
n = 0:N0-1;

x = 4*impND(5,n) - 7*impND(7,n);
xsq = x.^2;

Px = sum(xsq)/N0;

disp(['(d) Px = ',num2str(Px)]);

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
