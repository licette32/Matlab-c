% Defina una función ca(x) que aproxime a la función coseno por su polinomio de Taylor de cuarto grado. Grafique el coseno y la aproximación correspondiente en el
% intervalo [-3π/2;3π/2].

% Definir función de aproximación
ca = @(x) 1 - (x.^2)/2 + (x.^4)/24;

% Crear vector de valores para x
x = linspace(-3*pi/2, 3*pi/2, 100);

% Evaluar funciones
y_cos = cos(x);
y_ca = ca(x);

% Graficar
figure;
plot(x, y_cos, 'b', 'LineWidth', 2); hold on;
plot(x, y_ca, 'r--', 'LineWidth', 2);
legend('cos(x)', 'Aproximación de Taylor (4° grado)');
xlabel('x'); ylabel('y');
title('Aproximación de cos(x) con Taylor de 4° grado');
grid on;
