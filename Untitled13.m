%%señal x=-2+3*cos(20*pi*t+pi/4)+sin(40*pi*t)
%%tiempo tiempo discreto 
clc
n=linspace(0,50,100);
x=-2 + 3*cos(20*pi*n + pi/4) + sin(40*pi*n);
stem(n,x)
axis([0 50 -6 1.25])
grid
xlabel('Tiempo (s)')
ylabel('x[n]')

