function [sol, i] = Biseccion(f, a, b, tol, maxIter)
    step=inf;
    
    
    if f(a)*f(b)>0
        disp('No es posible garantizar una raíz en este intervalo')
        return; % se termine ejecucion
    end
    
    i=1;
    
    while i<maxIter
        x0=(a+b)/2;
        if step<tol
            disp(['Mejor solucion por alcanzar nivel de tolerancia: ', num2str(x0,8)]);
            disp(['Utilizando: ', num2str(i), ' iteraciones' ]);
            break;
        end
        if f(x0)*f(b)<0
            a=x0;
        else
            b=x0;
        end
        x1=(a+b)/2;
        step=abs(x1-x0);
        x0=x1;
        i=i+1;
    end
    if i == maxIter
        disp(['Mejor solucion por numero maximo de iteraciones: ', vpa(x0)]);
    end

    sol =  x0;
end