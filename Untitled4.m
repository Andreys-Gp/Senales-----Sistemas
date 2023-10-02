%Señal Sinusoidadl en Tiempo Discreto
n=0:0.1:T; 
f=0.125;
T=3*(1/f);
x=-2+3*cos(20*pi*n+pi/4)+sin(40*pi*n); 
xlabel('Tiempo(s)') 
ylabel('x(t)') 
stem(n,x,'g')
grid on
title('Señal Discreta')
axis([0 5 -1 1])