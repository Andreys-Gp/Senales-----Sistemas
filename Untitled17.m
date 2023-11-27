%Una señal diente de sierra, amplitud 5 Volts y frecuencia fundamental 20Hz
%tiempo discreto
A=5;%amplitud
f=1/20;%frecuencia fundamental
Fs=10000;%frecuencia de muestreo
T=3*(1/f);%numero de periodos a graficar
width=0.5;%ancho
n=0:T;%tiempo de simulacion
x=A*sawtooth(2*pi*f*n,width);%generacion de la señal
stem(n,x),grid on,ylim([-5.5 5.5]) %grafica
