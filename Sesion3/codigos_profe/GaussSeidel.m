%% Codigo compartido por el profe Gabriel Muñoz (Coordinador lab)

clear
A = [10, -1,  2,  0;
     -1, 11, -1, 3;
      2, -1, 10, -1;
      0,  3, -1,  8];

b = [6; 25; -11; 15];

% Condiciones iniciales
x = zeros(size(b));    % vector inicial
tol = 1e-5;            % tolerancia
max_iter = 100;        % número máximo de iteraciones

n = length(b);
x_old = x;

for k = 1:max_iter
    for i = 1:n
        suma = 0;
        for j = 1:n
            if j ~= i
                suma = suma + A(i,j) * x(j);
            end
        end
        x(i) = (b(i) - suma) / A(i,i);  % usa x(j) ya actualizado
    end

    % Verificar convergencia
    if norm(x - x_old, inf) < tol
        break;
    end

    x_old = x;
end

% Mostrar resultado
disp('Solución aproximada con Gauss-Seidel:');
disp(x);
disp(['Iteraciones realizadas: ', num2str(k)]);