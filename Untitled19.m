%Una señal senoidal amortiguada exponencialmente.
%tiempo discreto
subplot(1,1,1);
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