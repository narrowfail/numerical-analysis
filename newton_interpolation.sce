funcprot(0);

x = [4,5,6,7,8]
y = [2.0,2.23607,2.44949, 2.64575, 2.82843]

function resultado = newtonInterpol(x,y)
    n = length(y);
    F = zeros(n, n);
    F(:,1) = y';
    disp(F)
    for i=2:n
        for j=2:i
            F(i,j) = (F(i, j-1) - F(i-1, j-1)) / (x(i) - x(i + 1 - j));
        end;
    end
    disp(F)
    coef = diag(F);
    disp(coef)
    pol = 0;
    aux = [1, poly(0,'x') - x];
    disp(aux)
    for i = 1:n
        pol = pol + coef(i) * prod( aux(1:i) );
    end
    resultado = pol;
endfunction

resultado = newtonInterpol(x, y);

disp("Polinomio resultado:" + string(resultado))
w = [4: 0.1: 8]
h = horner(resultado, w)
plot(w,h)
plot(x', y', "*")

function y = f(x)
    y = sqrt(x)
endfunction

disp(horner(resultado, 4.5))
disp(f(4.5))

disp(horner(resultado, 7.5))
disp(f(7.5))
