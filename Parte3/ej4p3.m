% Vectores

% Escribir una función que reciba un vector y devuelva su norma.

function norma = norma_vector(v)
    norma = sqrt(sum(v .^ 2));
end

% Ejemplo de uso:
disp(norma_vector([3, 4])); % Debería devolver 5
