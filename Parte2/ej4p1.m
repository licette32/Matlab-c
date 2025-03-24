%Escriba un programa que determine si un dado entero (leído por consola) es primo. 
% Agregue un control para verificar que el número ingresado es un entero positivo. 
% Le serán útiles las funciones mod(x,y), que calcula x módulo y, y fix(x), que devuelve su argumento sin la parte fraccionaria.

n = input('Ingresa un número entero positivo: ');

if n < 1 || fix(n) ~= n
    disp('Error: Debes ingresar un entero positivo.');
elseif n == 1
    disp('1 no es un número primo.');
else
    esPrimo = true;
    for i = 2:sqrt(n)
        if mod(n, i) == 0
            esPrimo = false;
            break;
        end
    end

    if esPrimo
        fprintf('%d es un número primo.\n', n);
    else
        fprintf('%d no es un número primo.\n', n);
    end
end
