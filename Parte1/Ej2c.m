% Integral de la distribución gaussiana entre 0 y 1
% Para calcular la integral de la función con σ = 1, μ = 0 en el intervalo [0,1], se usa la integral en MATLAB y quad en Octave.

% Definir la función gaussiana
gauss = @(x) (1./sqrt(2*pi)) .* exp(-x.^2 ./ 2);

% Calcular la integral entre 0 y 1
I = integral(gauss, 0, 1);

% Mostrar resultado
fprintf('El valor de la integral es: %.5f\n', I);

% En octave
% Definir la función 
% gauss = @(x) (1./sqrt(2*pi)) .* exp(-x.^2 ./ 2);

% Calcular la integral
% I = quad(gauss, 0, 1);

% Mostrar resultado
% fprintf('El valor de la integral es: %.5f\n', I);


% El resultado esperado debe ser 0.34134.