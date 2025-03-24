% Pase los datos de entrada mediante argumentos en lugar de pedirlos por teclado en la función. 
% No imprima el resultado en pantalla dentro de la función sino devuélvalo al código que llamará a la función e imprímalo allí.

function x = posicion_auto(t, a, t1)
    if t < 0
        error('Error: El tiempo no puede ser negativo.');
    elseif t <= t1
        x = (1/2) * a * t^2;
    else
        x = (1/2) * a * t1^2 + a * t1 * (t - t1);
    end
end

% Uso:
% x = posicion_auto(5, 2, 3);
% fprintf('La posición del automóvil es: %.2f\n', x);
