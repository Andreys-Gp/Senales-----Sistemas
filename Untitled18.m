%Una señal senoidal amortiguada exponencialmente.
%tiempo continuo
subplot(1,1,1);
A=5;
Fs=10000;
f=1;
phi=pi/2;
t=0:1/Fs:T-1/Fs;
x=A*exp(-0.1*t).*sin(2*pi*f*t+phi);
plot(t,x,'r'),
grid on,
ylabel('funcion "x"'),
xlabel('tiempo(s)'),
title('onda sinusoidal amortiguada exponencialmente tiempo continuo')