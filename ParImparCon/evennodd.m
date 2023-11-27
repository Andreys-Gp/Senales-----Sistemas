 %%Partes Par e Impar De Una Señal Con ADSP Toolbox
n = -5:5; %Variable de tiempo
xn = [0 -1 2 2 1 1 2 1 -1 0 0];;%Generación de señal
[Par, Impar, tt] = evenodd(xt,t);
[Parn, Imparn, nn] = evenodd(xn,n);
subplot(3,2,4),stem(n,xn),grid on,title('Señal Original x[n]'),ylim([-1.1 1.1]) 
subplot(3,2,5),stem(nn,Parn),grid on,title('Parte Par de x[n]'),ylim([-1.1 1.1]) 
subplot(3,2,6),stem(nn,Imparn),grid on,title('Parte Impar de x[n]'),ylim([-1.1 1.1])

