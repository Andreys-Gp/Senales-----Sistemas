% Definir los parámetros del circuito

d = 10; % Distancia entre las placas, en centímetros

% Voltajes diferentes

V1 = 8;
V2 = 6;
V3 = 4;

% Crear un vector de coordenadas

x = linspace(-d / 2, d / 2, 1000);
y = linspace(-d / 2, d / 2, 1000);
[X, Y] = meshgrid(x, y);

% Calcular el potencial eléctrico para cada voltaje

V1 = -V1 * (X / d);
V2 = -V2 * (X / d);
V3 = -V3 * (X / d);

% Graficar las líneas equipotenciales para cada voltaje

subplot(1, 3, 1)
contour(X, Y, V1, levels=10, colors='k', linetype='-')
title('V = 10 V')
xlabel('x (cm)')
ylabel('y (cm)')

subplot(1, 3, 2)
contour(X, Y, V2, levels=10, colors='k', linetype='-')
title('V = 20 V')
xlabel('x (cm)')
ylabel('y (cm)')

subplot(1, 3, 3)
contour(X, Y, V3, levels=10, colors='k', linetype='-')
title('V = 30 V')
xlabel('x (cm)')
ylabel('y (cm)')
