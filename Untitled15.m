%%Una señal cuadrada, de amplitud 5 Volts, frecuencia fundamental 20 Hz y ciclo útil del 60%.
%%Señal cuadrada discreto

A = 5; % Amplitud
f = 20; % Frecuencia Fundamental
T = 3*(1/f); % Periodo
duty=60;%ciclo util
Fs=200;%frecuencia de muestreo
n = 0:1/Fs:T-1/Fs; % Tiempo de simulación graficar
x = A*square(2*pi*f*n,duty); 
% Generación de señal
stem(n,x),grid on, ylim([-5.1 5.1])