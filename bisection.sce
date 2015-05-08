funcprot(0);

function y = f(x)
    y = x^3 - 3*x + 2
endfunction


function [] = biseccion(a, b, iter)
    fa = f(a);
    fb = f(b);
    m = ((a + b) / 2);
    fm = f(m);
    
    if (fm == 0) | (iter < 1) then
        disp("Terminado!")
        disp("Y: " + string(fm))
        disp("X: " + string(m))
        disp("Iteraciones restantes: " + string(iter))
    else
        if (fa * fm < 0) then
            biseccion(a, m, iter - 1)
        else
            biseccion(m, b, iter - 1)
        end
    end
endfunction

biseccion(-4,1.5, 15)
