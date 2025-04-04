% Solicita al usuario ingresar el 1er número y lo almacena en la variable 'n1'.
n1 = input('Ingrese el primer numero:  ');

% Solicita al usuario ingresar el 2do número y lo almacena en la variable 'n2'.
% Este número se utilizará como denominador.
n2 = input('Ingrese el segundo numero:  ');

% Inicia una estructura condicional 'if' para verificar si el denominador ('n2') = 0.
if (n2 == 0)
    % Si 'n2' = 0, la división no está definida.
    % La función 'sprintf' crea una cadena de texto formateada.
    % En este caso, inserta el valor de 'n2' en la cadena.
    str = sprintf('El valor del denominador es cero: %d', n2);
    % La función 'disp' muestra la cadena de texto en la ventana de comandos.
    disp(str);
else
    % Si 'n2' no = 0, se puede realizar la división.
    % Calcula el cociente de 'n1'/'n2' y lo almacena en la variable 'n3'.
    n3 = n1 / n2;
    % Crea una cadena de texto formateada que incluye el valor del cociente ('n3').

    str = sprintf('El valor del cociente es: %f', n3);
    % Muestra la cadena de texto con el resultado de la división.
    disp(str);
end