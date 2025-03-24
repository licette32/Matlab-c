% Se define la función gauss(x, mu, sigma).
% Se generan valores de x entre -10 y 10.
% Se grafican las curvas para las combinaciones de μ = {0,1} y σ = {1,3}.


% Definir función gaussiana
gauss = @(x, mu, sigma) (1./sqrt(2*pi*sigma^2)) .* exp(-((x-mu).^2) ./ (2*sigma^2));

% Rango valores para x
x = linspace(-10, 10, 200);

% Parámetros a graficar
mu_vals = [0, 1];
sigma_vals = [1, 3];

% Crear figura
figure;
hold on;
colors = {'b', 'r', 'g', 'm'};

% Generar y graficar curvas
index = 1;
for mu = mu_vals
    for sigma = sigma_vals
        y = gauss(x, mu, sigma);
        plot(x, y, colors{index}, 'LineWidth', 2);
        legend_entries{index} = sprintf('\\mu = %d, \\sigma = %d', mu, sigma);
        index = index + 1;
    end
end

% Configurar gráfico
legend(legend_entries);
xlabel('x');
ylabel('f(x)');
title('Distribución Gaussiana Normalizada');
grid on;
