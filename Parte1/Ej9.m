% Solicita al usuario ingresar un número natural y lo almacena en la variable 'n'.
n = input('Ingrese un número natural para verificar si es primo: ');

% Inicializa la variable 'i' en 2. Este será el primer divisor que probaremos.
i = 2;

% Inicializa la variable 'primo' en 1 (verdadero). Asumimos inicialmente que el número es primo.
primo = 1;

% Inicia un bucle 'while' que continúa mientras 'i' sea menor o igual a la raíz cuadrada de 'n'.
% Solo necesitamos verificar divisores hasta la raíz cuadrada de 'n' porque si un número
% tiene un divisor mayor que su raíz cuadrada, también debe tener un divisor menor que ella.
while i <= sqrt(n)
    % Verifica si el resto de la división de 'n' por 'i' es igual a 0.
    % La función 'rem(n, i)' calcula el residuo de la división de 'n' entre 'i'.
    if rem(n, i) == 0
        % Si el resto es 0, significa que 'n' es divisible por 'i', por lo tanto, no es primo.
        primo = 0; % Cambia el valor de 'primo' a 0 (falso).
        break;   % Sale del bucle 'while' inmediatamente, ya que hemos encontrado un divisor.
    end
    % Incrementa el valor de 'i' en 1 para probar el siguiente posible divisor.
    i = i + 1;
end

% Después de que el bucle 'while' termina, verificamos el valor de la variable 'primo'.
if primo == 1
    % Si 'primo' sigue siendo 1 (verdadero), significa que no se encontraron divisores,
    % por lo tanto, el número ingresado es primo.
    disp('El número dado es primo.')
else
    % Si 'primo' es 0 (falso), significa que se encontró al menos un divisor,
    % por lo tanto, el número ingresado no es primo.
    disp('El número dado no es primo.')
    disp('De hecho, es divisible por:')
    % En este punto, la variable 'i' contendrá el primer divisor que se encontró
    % (o un valor ligeramente mayor si el bucle terminó sin encontrar divisores
    % justo antes de superar la raíz cuadrada). Es importante notar que 'i'
    % podría no ser el divisor más pequeño si el número no es primo, pero sí uno de ellos.
    disp(i)
end