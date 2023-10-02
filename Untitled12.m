%%señal x=-2+3*cos(20*pi*t+pi/4)+sin(40*pi*t)
%%tiempo continuo 
t=linspace(0,300,1000);
x=-2 + 3*cos(20*pi*t + pi/4) + sin(40*pi/4);
plot(t,x)
axis([0 300 -6.5 1.25])
grid