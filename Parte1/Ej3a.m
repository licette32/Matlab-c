% Escriba un programa que lea dos números del teclado e imprima su cociente. 
% Evite realizar una división por cero. Si el segundo número es cero, el programa debe


num1 = input('Ingrese el primer número: ');
num2 = input('Ingrese el segundo número: ');

if num2 == 0
    disp('Error: No se puede dividir por cero.');
else
    cociente = num1 / num2;
    fprintf('El cociente es: %.2f\n', cociente);
end
