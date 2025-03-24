% Exprese (101111010,011)₂ en decimal y hexadecimal.

binario = '101111010.011';
punto = find(binario == '.');

if isempty(punto)
    decimal_entero = bin2dec(binario);
    decimal_fraccion = 0;
else
    binario_entero = binario(1:punto-1);
    binario_fraccion_str = binario(punto+1:end);
    decimal_entero = bin2dec(binario_entero);
    decimal_fraccion = 0;
    for i = 1:length(binario_fraccion_str)
        if binario_fraccion_str(i) == '1'
            decimal_fraccion = decimal_fraccion + 2^(-i);
        end
    end
end

decimal = decimal_entero + decimal_fraccion;
hexadecimal = dec2hex(decimal_entero);

disp(['(101111010.011)_2 en decimal: ', num2str(decimal)]);
disp(['(101111010.011)_2 en hexadecimal (parte entera): ', hexadecimal]);