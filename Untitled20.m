%Grafique las señales anteriores en una sola gráfica y rotule cada una de ellas con sus ejes.
% Señales en tiempo continuo
t = linspace(0,300,1000);
x = -2+3+cos(20*pi*t+pi/4)+sin(40*pi*t);
axis([0 300 -6.5 1.25])
grid
subplot(3,3,1);
plot(t,x)
legend('x')
xlabel('Tiempo (s)')
ylabel('x(t)')

% Señales en tiempo discreto
n = linspace(0,50,100);
x = -2 + 3*cos(20*pi*n+pi/4)+sin(40*pi*n);
subplot(3,3,2);
stem(n,x)
legend('x')
axis([10 50 -6 1.251])
grid
xlabel('Tiempo (s)')
ylabel('x[n]')

%%Una señal cuadrada, de amplitud 5 Volts, frecuencia fundamental 20 Hz y ciclo útil del 60%.
%%Señal cuadrada continuo

A = 5; % Amplitud
f = 20; % Frecuencia Fundamental
T = 3*(1/f); % Periodo
duty=60;%ciclo util
Fs=200;%frecuencia de muestreo
n = 0:1/Fs:T-1/Fs; % Tiempo de simulación graficar
x = A*square(2*pi*f*n,duty); 
% Generación de señal
subplot(3,3,3);
plot(n,x),grid on, ylim([-5.5 5.5]) %grafica

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
subplot(3,3,4);
stem(n,x),grid on, ylim([-5.1 5.1])

%Una señal diente de sierra, amplitud 5 Volts y frecuencia fundamental 20Hz
%tiempo continuo 
A=5;%amplitud
f=20;%frecuencia fundamental
Fs=10000;%frecuencia de muestreo
T=3*(1/f);%numero de periodo a graficar
width=0.5;%ancho
t=0:1/Fs:T-1/Fs;%tiempo de simulacion
x=A*sawtooth(2*pi*f*t,width);%generacion de la señal
subplot(3,3,5);
plot(t,x),grid on,ylim([-5.5 5.5]) %grafica

%Una señal diente de sierra, amplitud 5 Volts y frecuencia fundamental 20Hz
%tiempo discreto
A=5;%amplitud
f=1/20;%frecuencia fundamental
Fs=10000;%frecuencia de muestreo
T=3*(1/f);%numero de periodos a graficar
width=0.5;%ancho
n=0:T;%tiempo de simulacion
x=A*sawtooth(2*pi*f*n,width);%generacion de la señal
subplot(3,3,6);
stem(n,x),grid on,ylim([-5.5 5.5]) %grafica

%Una señal senoidal amortiguada exponencialmente.
%tiempo continuo
subplot(1,1,1);
A=5;
Fs=10000;
f=1;
phi=pi/2;
t=0:1/Fs:T-1/Fs;
x=A*exp(-0.1*t).*sin(2*pi*f*t+phi);
subplot(3,3,7);
plot(t,x,'r'),
grid on,
ylabel('funcion "x"'),
xlabel('tiempo(s)'),
title('onda sinusoidal amortiguada exponencialmente tiempo continuo')

%Una señal senoidal amortiguada exponencialmente.
%tiempo discreto
subplot(3,3,8);
A=5;
f=1/20;
T=3*(1/f);
phi=pi/2;
n=0:T;
x=A*exp(-0.1*n).*sin(2*pi*f*n+phi);
stem(n,x,'r'),
grid on,
ylabel('funcion "x"'),
ylim([-6 6]),
ylabel('funcion f(n)'),
xlabel('tiempo(n)'),
title('onda sinusoidal amortiguada exponencialmente tiempo discreto')

