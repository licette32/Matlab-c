% Pase los datos de entrada mediante argumentos en lugar de pedirlos por teclado en la función. 
% No imprima el resultado en pantalla dentro de la función sino devuélvalo al código que llamará a la función e imprímalo allí.

function esPrimo = es_primo(n)
    if n < 1 || fix(n) ~= n
        error('Error: Debe ingresar un entero positivo.');
    elseif n == 1
        esPrimo = false;
    else
        esPrimo = true;
        for i = 2:sqrt(n)
            if mod(n, i) == 0
                esPrimo = false;
                break;
            end
        end
    end
end

% Uso:
% resultado = es_primo(7);
% if resultado
%     disp('Es primo');
% else
%     disp('No es primo');
% end
