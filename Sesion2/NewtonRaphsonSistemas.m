
function [sol, i] = NewtonRaphsonSistemas(f, x0, maxIter)
    syms a b c
    
    vars = [a; b; c];
    DF = jacobian(f, vars);
    J = matlabFunction(DF, 'vars', {a, b, c});
    F = matlabFunction(f, 'vars', {a, b, c});

    i = 1;

    while (i < maxIter)
        x1 = x0 - J(x0(1), x0(2), x0(3)) \ F(x0(1), x0(2), x0(3));
        x0 = x1;
        i = i + 1;
    end

    disp('Mejor solución por número máximo de iteraciones:');
    vpa(x1)
    sol = x1;
end