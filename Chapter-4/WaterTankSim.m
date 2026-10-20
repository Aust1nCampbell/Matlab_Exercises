clear all;
close all;
clc;

% Chapter 4 - Water Tank Simulation

g = 9.8;
A1 = 1;
A2 = 0.0005;
h1 = 0;
h2 = 0;
f1 = 0.004;

Ts = [100,500,1000];
N = round(8000./Ts);

figure(1);

for m = 1:length(Ts)
    h1 = 0;
    h = zeros(N(m)+1,1);

    for n = 1:N(m)
        h1 = (Ts(m)*f1 + A1*h1 - ...
            A2*Ts(m)*sqrt(2*g*h1-h2))/A1;

        h(n+1) = h1;
    end

    t = (0:N(m))*Ts(m);

    subplot(3,1,m);
    stem(t,h,'k','filled');
    xlabel('Time (s)');
    ylabel('Water Height (m)');
    title(['Ts = ',num2str(Ts(m)),' s']);
    grid on;

    fprintf('Ts = %d s, Final Height = %.4f m\n',Ts(m),h1);
end

drawnow;

