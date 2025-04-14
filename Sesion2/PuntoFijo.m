function [sol, i] = PuntoFijo(f, x0, tol, maxIter)
    step = inf;
    i=1;
    while(i<maxIter)
        if step<tol
           disp(['Mejor solucion por alcanzar nivel de tolerancia encontrada en: ', num2str(x1,8)]);
           disp(['Utilizando: ', num2str(i), ' iteraciones'])
           break;
        end
            x1=f(x0);
            
            step=abs(x1-x0);
            x0=x1;
            i=i+1;
        end
    if i==maxIter
        disp(['Mejor solucion por numero maximo de iteraciones: ', num2str(x1,8)]);
    end
    sol = x0;
end