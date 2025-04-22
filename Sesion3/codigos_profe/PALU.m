%% Codigo compartido por el profe Gabriel Muñoz (Coordinador lab)

% Matriz A y vector b
A = [0, 2, 1;
     1, 1, 0;
     2, 1, 1];

b = [4; 2; 6];

% Paso 1: Descomposición LU con pivoteo
[L, U, P] = lu(A);

% Paso 2: Sustitución hacia adelante para resolver L * y = P * b
Pb = P * b;
n = length(b);
y = zeros(n,1);

for i = 1:n
    y(i) = Pb(i) - L(i,1:i-1) * y(1:i-1);
end

% Paso 3: Sustitución hacia atrás para resolver U * x = y
x = zeros(n,1);

for i = n:-1:1
    x(i) = (y(i) - U(i,i+1:n) * x(i+1:n)) / U(i,i);
end

% Mostrar resultados
disp('Vector y (resultado de L*y = P*b):');
disp(y);

disp('Solución final x (resultado de U*x = y):');
disp(x);

% Verificación
disp('Verificación A*x:');
disp(A * x);

