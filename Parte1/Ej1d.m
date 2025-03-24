% Obtenga la suma de los primeros 135 términos de la serie de Taylor de la función exponencial, alrededor de cero, evaluados en x = 2.

x = 2;
n_terms = 135;

e_approx = sum((x.^(0:n_terms-1)) ./ factorial(0:n_terms-1));
disp(e_approx)

% El valor es aprox: 7,38905609893065040694182