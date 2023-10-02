t = 0:0.1:40;
x = -2+3*cos(cos(5*pi*t+pi/4))+sin(40*pi*t);

figure('Position', [0, 0, 1000, 500])
plot(t,x, 'color', 'red', 'linewidth', 2, 'markersize', 10, 'DisplayName', 'Señal sinusoidal')
axis([0 30 -5 5])
title("Señal sinusoidal", 'color', 'blue', 'fontsize', 20)
grid
xlabel('Time (sec)', 'fontsize', 20)
ylabel('x(t)', 'fontsize', 20)
legend()