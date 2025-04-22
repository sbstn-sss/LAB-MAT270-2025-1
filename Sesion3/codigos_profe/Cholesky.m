%% Codigo compartido por el profe Gabriel Muñoz (Coordinador lab)

A = [6, 3, 4;
     3, 6, 5;
     4, 5, 10];
% Verificar que A es simétrica
issymmetric(A)


% Se puede ajustar el código anterior, o hacerlo simplemente por las
% inversas.
L=chol(A,'lower')
L*L'
b = [1; 2; 3]
y = L\b
x = L'\y
A*x