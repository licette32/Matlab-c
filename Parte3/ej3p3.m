% Vectores

% Escribir una función que reciba dos vectores y devuelva si son paralelos o no.

function paralelo = son_paralelos(v1, v2)
    if length(v1) ~= length(v2)
        error('Los vectores deben tener la misma longitud');
    end
    razones = v1 ./ v2;
    paralelo = all(razones == razones(1));
end

% Ejemplo de uso:
disp(son_paralelos([2, 4, 6], [1, 2, 3])); % Debería ser true
