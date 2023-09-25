%%C:\Users\Brayan\Desktop\Desarrollo-Java
%%MATLAB® con señales de tiempo continuo
t=0:0.1:30;
x=exp(-0.1*t).*sin(2/3*t);
plot(t,x);
axis([0 30 -1 1]);
grid
xlabel('time (sec)')
ylabel('x(t)')