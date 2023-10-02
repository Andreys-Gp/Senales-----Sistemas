%Una señal diente de sierra, amplitud 5 Volts y frecuencia fundamental 20Hz
%tiempo continuo 
A=5;%amplitud
f=20;%frecuencia fundamental
Fs=10000;%frecuencia de muestreo
T=3*(1/f);%numero de periodo a graficar
width=0.5;%ancho
t=0:1/Fs:T-1/Fs;%tiempo de simulacion
x=A*sawtooth(2*pi*f*t,width);%generacion de la señal
plot(t,x),grid on,ylim([-5.5 5.5]) %grafica

