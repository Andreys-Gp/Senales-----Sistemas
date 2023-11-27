function ParImparConN(x,t)
%"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" % PROPÓSITO:
% Programa que calcula las partes Par e Impar de una Señal Continua, 
% visualizando además, las cuatro señales (La señal original, la parte par, 
% la parte impar y la suma de la parte par e impar) %
% USO:
% ParImparCon(x,I) %
% ARGUMENTOS DE ENTRADA: 
% x ---> Señal Continua.
 x = sin(t);
% t ---> Vector temporal para definir la señal continua Ej: [-3:0.05:3] %
t=4*pi:4*pi;
% ARGUMENTOS DE SALIDA: NO HAY %
% COMENTARIOS:
% La señal 'x' debe ser una función definida numéricamente, de una única variable
% independiente, que debe ser 't'. %
% VER TAMBIÉN:
% ParImparDis ParImparCon
%"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
% (C) Brayan Gonzalez, 2023. % Versión 1.0
%""""""""""""""""""""""""""""""""""""""""
xPAR = (x + x(end:-1:1))/2; %Calculo de la parte par de la señal 
xIMPAR = (x - x(end:-1:1))/2; %Calculo de la parte impar de la señal
xSUMA = xPAR + xIMPAR; %Reconstrucción de la señal original F = figure(1);
set(F,'name','PARTE PAR Y PARTE IMPAR (SEÑALES CONTINUAS)'); 
subplot(2,2,1),plot(t,x),grid on,title('SEÑAL ORIGINAL x(t)'); %Grafica señal original
subplot(2,2,2),plot(t,xSUMA),grid on,title('SEÑAL RECONSTRUIDA x(t)=xp(t)+xi(t)'); %Grafica señal reconstruida 
subplot(2,2,3),plot(t,xPAR),grid on,title('PARTE PAR xp(t) DE LA SEÑAL x(t)'); %Grafica parte par
subplot(2,2,4),plot(t,xIMPAR),grid on,title('PARTE IMPAR xi(t) DE LA SEÑAL x(t)');
%Grafica parte impar