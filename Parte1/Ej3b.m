% Escriba un programa que devuelva el arco seno de un número ingresado por teclado.
% Advierta al usuario en caso de que la respuesta no exista en el conjunto de los números reales.


x = input('Ingrese un número entre -1 y 1: ');

if x < -1 || x > 1
    disp('Error: El número ingresado está fuera del dominio del arcsen.');
else
    resultado = asin(x);
    fprintf('El arco seno de %.2f es: %.4f radianes\n', x, resultado);
end