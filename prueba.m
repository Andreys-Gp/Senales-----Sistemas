t=-5:0.01:10;
x=2*sin(((pi/4)*t)+pi/4);
plot(t,x);
axis([-5 6 -5 5]);
grid
xlabel('time (sec)')
ylabel('x(t)')