t=0:0.0001:pi;
x=-2+3*cos(5*pi*t+pi/4)+sin(40*pi*t);
plot(t, x, 'r', 'LineWidth', 1)
grid on
xlabel('Tiempo(s)')
ylabel('x(t)')
title('Señal Sinusoidal')
axis([0 2 -6.5 0.5])