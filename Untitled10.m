%Tiempo Discreto
subplot(2,1,2),
A=5;
f = 1/20;
T=3*(1/f)
phi=pi/2;
n=0:T;
x=A*exp(-0.1*n).*sin(2*pi*f*n+phi);
stem(n,x,'r'),grid on, ylim([-6 6])
ylabel('Funcion "x"'), 
xlabel('Tiempo(s)'),
title('Onda Sinusoidal amortiguada exponencialmente Tiempo Discreto')