clear
%% Actividad 1
A = [1 2; 1 5];
b = [3 7]';

res = A\b;

lambda0 = res(1);
lambda1 = res(2);

p = @(x) lambda0 + lambda1 * x;

% Grafico
x = -1:0.1:8;

figure
plot(x, p(x), '--r', "LineWidth", 2) % polinomio
hold on

% Agregar puntos (2,3) y (5,7)
plot([2 5], [3 7], 'ob', 'MarkerSize', 8, 'MarkerFaceColor', 'b') % puntos azules

grid on
xline(0)
yline(0)
xlabel('x')
ylabel('p(x)')
title('Recta que interpola los puntos (2,3) y (5,7)')

clear
%% Ejercicio: Encontrar parabola que interpola los puntos: {(0,1),(1,6),(2,17)}

% p(x) = a * x^2 + b * x + c 
A = [0^2 0 1; 1^2 1 1; 2^2 2 1];
b = [1 6 17]';

res = A\b;

a = res(1);
b = res(2);
c = res(3);

p = @(x)  a * x.^2 + b * x + c;

% Grafico
x = -1:0.1:3;

figure
plot(x, p(x), '--r', "LineWidth", 2) % polinomio
hold on

% Agregar puntos (2,3) y (5,7)
plot([0 1 2], [1 6 17], 'ob', 'MarkerSize', 8, 'MarkerFaceColor', 'b') % puntos azules

grid on
xline(0)
yline(0)
xlabel('x')
ylabel('p(x)')
ylim([-3 25])
title('Parabola que interpola los puntos (0,1), (1,6) y (2,17)')