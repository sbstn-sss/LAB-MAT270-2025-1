clear
x_data = [1 2 3];
y_data = [4 5 8];

n = length(x_data);
    
% Crear la tabla de diferencias divididas
DD = zeros(n, n);
DD(:,1) = y_data; % Primera columna: y_data

for j = 2:n
    for i = 1:n-j+1
        DD(i,j) = (DD(i+1,j-1) - DD(i,j-1)) / (x_data(i+j-1) - x_data(i));
    end
end

% Construir el polinomio de Newton
syms x
p = DD(1,1); % Primer término constante
prod_term = 1;
for j = 1:n-1
    prod_term = prod_term * (x - x_data(j));
    p = p + DD(1,j+1)*prod_term;
end

% Expandir el polinomio para mostrarlo de forma bonita
p = expand(p)

% Transformar a funcion evaluable:
p = matlabFunction(p);

% Ejemplo de evaluacion
p(5)