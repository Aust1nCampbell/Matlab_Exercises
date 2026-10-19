clear all;
close all;
clc;

% Chapter 2 - Hypotenuse Function
% Calculates the hypotenuse.

a = 3;
b = 4;

c = hyp(a,b);

disp(['Hypotenuse = ', num2str(c)]);

function c = hyp(a,b)
c = sqrt(a^2 + b^2);
end

