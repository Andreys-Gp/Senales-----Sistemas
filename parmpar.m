 %%x(t)=sin(t)    intervalos [-4π,4π]
 syms t;
 x=sin(t)
 t=4*pi:4*pi;
xPAR = (x + x(end:-1:1))/2; %Calculo de la parte par de la señal
xIMPAR = (x - x(end:-1:1))/2; %Calculo de la parte impar de la señal
xSUMA = xPAR + xIMPAR; %Reconstrucción de la señal original 
F = figure(1);
set(F,'name','PARTE PAR Y PARTE IMPAR (SEÑALES CONTINUAS)'); 
subplot(2,2,1),plot(t,x),grid on,title('SEÑAL ORIGINAL x(t)'); %Grafica señal original
subplot(2,2,2),plot(t,xSUMA),grid on,title('SEÑAL RECONSTRUIDA x(t)=xp(t)+xi(t)'); %Grafica señal reconstruida subplot(2,2,3),plot(t,xPAR),grid on,title('PARTE PAR xp(t) DE LA SEÑAL x(t)'); %Grafica parte par
subplot(2,2,4),plot(t,xIMPAR),grid on,title('PARTE IMPAR xi(t) DE LA SEÑAL x(t)');
%Grafica parte impar