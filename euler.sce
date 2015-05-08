funcprot(0);

function y = f(t, y)
    y = t^2 - y
endfunction

function [w, t] = euler(a, b, n, m)
    h = (b - a) / n;
    t(1) = a;
    w(1) = m;
    for i = 2: n + 1
        w(i) = w(i - 1) + f(t(i - 1), w(i - 1)) * h;
        t(i) = t(i - 1) + h;
    end
endfunction

//Ploteo aprox. euler (del 0 al 1)
[r1, r2] = euler(0, 1, 10, 1)
disp(r1)
disp(r2)
plot(r2, r1, "green")

function y = f2(t)
    y = t^2 -2*t - %e^(-t) + 2
endfunction

//Ploteo solucion ec dif
plot(r2, f2(r2), "r")
