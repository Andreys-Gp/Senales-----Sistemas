n = 0:29;
x = -2+3*cos(cos(5*pi*n+pi/4))+sin(40*pi*n);
stem(n,x)
axis([0 30 -1 1])
grid
xlabel('Time (sec)')
ylabel('x[n]')