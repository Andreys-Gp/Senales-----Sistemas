%Ejercicio 2.a,b,c,d,e. %Grafico Onda Cuadrada Tiempo Continuo
subplot(2,1,1), 
A=5; Fs=10000;
f = 20; T=3*(1/f); 
duty=60;
t=0:1/Fs:T-1/Fs;
x=A*square(2*pi*f*t,duty);
plot(t,x),grid on, ylim([-10 10])
ylabel('Funcion "x"') 
xlabel('Tiempo(s)')
title('Onda Cuadrada Tiempo Continuo')