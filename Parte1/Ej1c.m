% c) Calcule las raíces de: x3 + x2 + 1
% Evalúe luego el polinomio en las raíces obtenidas. ¿Qué resultado espera obtener? ¿Qué resultado se obtiene? ¿Puede explicar por qué?


% Coeficientes del polinomio
p = [1 1 0 1]; % x^3 + x^2 + 1

% Calcular raíces del polinomio
r = roots(p);
disp(r)

% Evaluar el polinomio en las raíces obtenidas
p_val = polyval(p, r);
disp(p_val)

% Los valores son: -2,20557 + 0,00000i; 0,10278 + 0,66546i y 0,10278 –0,66546i