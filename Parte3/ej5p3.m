% Vectores
% Reemplace todos los dígitos en la cadena por el caracter. Ej: su clave es: 1540 y X debería devolver su clave es: XXXX

function nueva_cadena = reemplazar_digitos(cadena, caracter)
    nueva_cadena = regexprep(cadena, '\d', caracter);
end

% Ejemplo de uso:
disp(reemplazar_digitos('su clave es: 1540', 'X')); % "su clave es: XXXX"

disp(reemplazar_digitos('su clave es: 1540', '*')); % "su clave es: ****"