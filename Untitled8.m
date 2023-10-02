%% Generación de una señal de diente de sierra en tiempo discreto

% Parámetros de la señal
A = 5; %Amplitud
f = 20; %Frecuencia fundamental
Fs = 1000; %Frecuencia de muestreo
T = 3 * (1 / f); %Número de períodos a graficar
width = 0.5; %Ancho del diente

% Cálculo del número de muestras
n = 0:T / Fs;

% Generación de la señal
% Utilizamos la función sign() para convertir los valores de la función diente de sierra continua en valores discretos
x = A * sign(2 * pi * f * n * width);

% Visualización de la señal
figure
plot(n, x, 'r', 'LineWidth', 1)
grid on
xlabel('Tiempo (s)')
ylabel('x(n)')
title('Onda diente de sierra')
