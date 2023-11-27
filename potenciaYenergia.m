%% Ejemplo 1: Cálculo de Energía de una señal en tiempo continuo y discreto 
syms t; %Variable simbólica de tiempo 
n = 0:100;%Vector temporal discreto 
sympref('HeavisideAtOrigin',1); %Cambiar el valor en el origen de la función heaviside 
x1 = exp(-2*t)*heaviside(t); %Generación de señal x1(t)
x2 = ((1/2).^n).*heaviside(n); %Generación de señal x2[n] 
Ex1 = int(x1^2,t,-Inf,+Inf); %Cálculo de la energía de la señal x1(t)
Ex11 = enerpwr('exp(-2.*t).*heaviside(t)',[0,100]); %Cálculo de la energía de la señal x1(t) con ADSP Toolbox
Ex2 = sum(x2.^2); %Cálculo de la energía de la señal x2[n] 
Ex22 = enerpwr(x2,[0,100,1]); %Cálculo de la energía de la señal x2[n] con ADSP
Toolbox