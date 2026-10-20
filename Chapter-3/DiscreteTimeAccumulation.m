clear all;
close all;
clc;

% Chapter 3 - Discrete-Time Signal Accumulation

n = 0:36;
x = cos(2*pi*n/36);

y = cumsum(x);

stem(n,y,'k','filled');
xlabel('n');
ylabel('Accumulation');
title('Discrete-Time Signal Accumulation');
grid on;
