%% Partes Par e Impar De Una Señal Con ADSP Toolbox 
t = -3:0.005:3; %Variable de tiempo
xt = (t+2).*(heaviside(t+2)-heaviside(t+1))-t.*(heaviside(t+1)heaviside(t))+t.*(heaviside(t)-heaviside(t-1))+heaviside(t-1);
%Generación de señal n = -5:5;% Variable de tiempo discreto 
xn = -1.*ustep(n+5)+2.*ustep(n);%Generación de señal 
x[n] [Par, Impar, tt] = evenodd(xt,t); %Calculo de la parte par e impar de la señal x(t) 
[Parn, Imparn, nn] = evenodd(xn,n); %Calculo de la parte par e impar de la señal x[n]
subplot(3,2,1),plot(t,xt),grid on,title('Señal Original x(t)'),ylim([-1.1 1.1])
subplot(3,2,2),plot(tt,Par),grid on,title('Parte Par de x(t)'),ylim([-1.1 1.1])
subplot(3,2,3),plot(tt,Impar),grid on,title('Parte Impar de x(t)'),ylim([-1.1 1.1]
) subplot(3,2,4),stem(n,xn),grid on,title('Señal Original x[n]'),ylim([-1.1 1.1]) 
subplot(3,2,5),stem(nn,Parn),grid on,title('Parte Par de x[n]'),ylim([-1.1 1.1])
subplot(3,2,6),stem(nn,Imparn),grid on,title('Parte Impar de x[n]'),ylim([-1.1
1.1])