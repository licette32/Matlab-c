% Vectores
%b) Escribir una función que reciba dos vectores y devuelva si son o no ortogonales.s


function ortogonal = son_ortogonales(v1, v2)
    ortogonal = producto_escalar(v1, v2) == 0;
end

% Ejemplo de uso:
disp(son_ortogonales([1, 2], [-2, 1])); % Debería ser true
