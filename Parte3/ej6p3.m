% Vectores
% Inserte el caracter cada 3 dígitos en la cadena. Ej. 2552552550 y . debería devolver 255.255.255.0


function nueva_cadena = insertar_cada_tres(cadena, caracter)
    cadena = regexprep(cadena, '(\d{3})', ['$1' caracter]);
    if cadena(end) == caracter
        cadena(end) = [];
    end
    nueva_cadena = cadena;
end

% Ejemplo de uso:
disp(insertar_cada_tres('2552552550', '.')); % "255.255.255.0"
