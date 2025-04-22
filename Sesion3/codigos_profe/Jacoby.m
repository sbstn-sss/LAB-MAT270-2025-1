%% Codigo compartido por el profe Gabriel Muñoz (Coordinador lab)

clear
% Matriz A y vector b
A = [10, -1,  2,  0;
     -1, 11, -1, 3;
      2, -1, 10, -1;
      0,  3, -1,  8];

b = [6; 25; -11; 15];

% Condiciones iniciales
x = zeros(size(b));    % vector inicial x = [0; 0; 0; 0]
tol = 1e-5;            % tolerancia
max_iter = 100;        % número máximo de iteraciones

% Iteración de Jacobi
n = length(b);
x_new = zeros(n, 1);

for k = 1:max_iter
    for i = 1:n
        suma = 0;
        for j = 1:n
            if j ~= i
                suma = suma + A(i,j) * x(j); % A(i,j) con i!=j son los elementos de L + U
                % esto es (L + U) * x
            end
        end
        x_new(i) = (b(i) - suma) / A(i,i); % A(i,i) corresponde a la diagonal
    end
    
    % Verificamos convergencia
    if norm(x_new - x, inf) < tol
        break;
    end
    
    x = x_new;
end

% Resultado final
disp('Solución aproximada con Jacobi:');
disp(x_new);
disp(['Iteraciones realizadas: ', num2str(k)]);