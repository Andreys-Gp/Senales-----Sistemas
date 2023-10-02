
subplot(2,1,1),
A=5;
Fs=10000;
f=1;
phi=pi/2;
t=0:1/Fs:T-1/Fs;
x=A*exp(-0.1*t).*sin(2*pi*f*t+phi);
plot(t,x,'r'),grid on 
ylabel('Funcion "x"'),
xlabel('Tiempo(s)'),
title('Onda Sinusoidal amortiguada exponencialmente Tiempo Continuo')