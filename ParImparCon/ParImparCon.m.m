function ParImparCon(x,I) %"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" % PROPÓSITO:
% Programa que calcula las partes Par e Impar de una Señal Continua, % visualizando además, las cuatro señales (La señal original, la parte par, % la parte impar y la suma de la parte par e impar) %
% USO:
% ParImparCon(x,I) %
% ARGUMENTOS DE ENTRADA: % x ---> Señal Continua. % I ---> Intervalo (de la variable independiente) donde se representarán % las señales. Ej: [-3 3] %
% ARGUMENTOS DE SALIDA: NO HAY %
% COMENTARIOS: % La señal 'x' debe ser una función simbólica, de una única variable % independiente, que debe ser 't'. %
% VER TAMBIÉN: % ParImparDis ParImparConN
%"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" % (C) NOMBRE ALUMNO, 2017. % Versión 1.0
%"""""""""""""""""""""""""""""""""""""""" 
syms t;% Definición de variable independiente simbólica.
xPAR = (x + subs(x,t,-t))/2; % Parte Par de la señal.
xIMPAR = (x - subs(x,t,-t))/2; % Parte Impar de la señal. 
xSUMA = xPAR + xIMPAR; %Reconstrucción de la señal original 
F = figure(1); 
set(F,'name','PARTE PAR Y PARTE IMPAR (SEÑALES CONTINUAS)');
subplot(2,2,1),fplot(x,I),grid on,title('SEÑAL ORIGINAL x(t)'); %Grafica señal original
subplot(2,2,2),fplot(xSUMA,I),grid on,title('SEÑAL RECONSTRUIDA x(t)=xp(t)+xi(t)'); %Grafica señal reconstruida subplot(2,2,3),fplot(xPAR,I),grid on,title('PARTE PAR xp(t) DE LA SEÑAL x(t)'); %Grafica parte par
subplot(2,2,4),fplot(xIMPAR,I),grid on,title('PARTE IMPAR xi(t) DE LA SEÑAL x(t)');
%Grafica parte impar

