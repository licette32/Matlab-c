% Problema 4a: Convertir 123.51 a binario y hexadecimal
num = 123.51;
binario_entero = dec2bin(floor(num)); % Parte entera en binario
binario_fraccion = ''; 
frac = num - floor(num);
while frac > 0 && length(binario_fraccion) < 10
    frac = frac * 2;
    bit = floor(frac);
    binario_fraccion = strcat(binario_fraccion, num2str(bit));
    frac = frac - bit;
end
binario = strcat(binario_entero, '.', binario_fraccion);
hexadecimal = dec2hex(floor(num));

% Mostrar resultados
disp(['Binario de 123.51: ', binario]);
disp(['Hexadecimal de 123.51: ', hexadecimal]);
