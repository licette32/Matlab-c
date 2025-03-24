% b) Calcular la suma de los primeros 1000 términos de la serie geométrica:
% La fórmula para la serie geométrica es:

q = 1/7;
n_terms = 1000;

% Suma de primeros 1000 términos de la serie
S = sum(q.^(0:n_terms-1));
disp(S)

% La suma sera aproximadamente 1.1667.