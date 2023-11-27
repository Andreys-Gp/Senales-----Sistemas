
t = 0:0.01:1;
senial = sin(2*pi*10*t);

function [Energia,Potencia,Clasificacion] = clasificarSenal(senial, 'Continuo ')

% Determina si la señal es en tiempo continuo o discreto
if tipo == 'Continuo'
  % Señal en tiempo continuo
  limiteInf = -Inf;
  limiteSup = Inf;
else
  % Señal en tiempo discreto
  limiteInf = 0;
  limiteSup = length(senial);
end

% Calcula la energía de la señal
Energia = int(senial^2, limiteInf, limiteSup);

% Calcula la potencia de la señal
Potencia = Energia/(limiteSup-limiteInf);

% Determina la clasificación de la señal
if Energia == 0
  clasificacion = 'No entra en la clasificación';
elseif Potencia == 0
  clasificacion = 'Señal de energía';
else
  clasificacion = 'Señal de potencia';
end

end
