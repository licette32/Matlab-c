% Vectores
% a) Escribir una función que reciba dos vectores y devuelva su producto escalar.

function producto = producto_escalar(v1, v2)
    if length(v1) ~= length(v2)
        error('Los vectores deben tener la misma longitud');
    end
    producto = sum(v1 .* v2);
end

% Ejemplo de uso:
v1 = [1, 2, 3];
v2 = [4, 5, 6];
disp(producto_escalar(v1, v2));
% Resultado: 