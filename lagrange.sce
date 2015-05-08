function coeficientes = lgpoly(x, y)
    n = length(x)
    P = 0
    i = 1
    while i <= n
        raices = []
        j = 1
        while j <= n
            if j <> i then
                raices = [raices, x(j)]
            end
            j = j+1
        end
        Paux = poly(raices, 'x')
        L = (Paux/horner(Paux, x(i)))
        P = P + (y(i) * L)
        i = i + 1
    end
    coeficientes = coeff(P)
endfunction

resultado = lgpoly([0, 1, 2] ,[0, 1, 0])
rpoly = poly(resultado, 'x', 'coeff')
disp(rpoly)

