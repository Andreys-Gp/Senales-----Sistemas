    %Grafico Onda Cuadrada Tiempo Discreto
    
subplot(2,1,2), 
A=5; 
f = 1/20; 
T=3*(1/f);
duty=60; n=0:T;
x=A*square(-2+3*cos(20*pi*t+1/4)+sin(40*pi*t),duty);
stem(n,x,'g'),
grid on, 
ylim([-10 10]) 
ylabel('Funcion "x"') 
xlabel('Tiempo (s)'),
title('Onda Cuadrada Tiempo Discreto')