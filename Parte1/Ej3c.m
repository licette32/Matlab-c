% Un automóvil parte del reposo con aceleración constante durante un intervalo de tiempo t1 y luego continúa con velocidad constante. 
% De modo que su posición en función del tiempo es: x(t)= { 1/2 at^2 para 0<=t<=t1, 1/2 at1^2+at1(t-t1) para t>t1
% Escriba un programa que lea el tiempo por teclado e imprima la posición correspondiente. 
% Considere que el programa imprima un mensaje de error si el usuario ingresa un tiempo negativo.

% Solicita al usuario que ingrese el tiempo
t = input('Ingrese el tiempo (en segundos): ');

% Definir tiempo en el que la aceleración cesa (t1) y la aceleración (a)
t1 = 5; % Ejemplo: 5 segundos de a
a = 2;  % Ejemplo: 2 m/s^2 de a

% Verificar si t ingresado es negativo
if t < 0
    disp('Error: El tiempo no puede ser negativo.');
else
    % Calcular X según el intervalo de t
    if t <= t1
        % Durante a cte (0 < t <= t1)
        x = 0.5 * a * t^2;
    else
        % Después de a cte (t > t1)
        % Calcular Vf del intervalo de a
        v1 = a * t1;
        % Calcular Xf del intervalo de a
        x1 = 0.5 * a * t1^2;
        % Calcular X durante V cte
        x = x1 + v1 * (t - t1);
    end

    % Imprimir X correspondiente
    fprintf('La posición del auto en t = %.2f segundos es: %.2f metros\n', t, x);
end