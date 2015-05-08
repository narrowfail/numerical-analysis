funcprot(0)

function y = f(x)
    y = x^3-3*x+2
endfunction

function y = fdev(x)
    y = 3*x^2-3
endfunction

function y = g(x)
    y = x - (f(x)) / (fdev(x))
endfunction

function [] = NewtonRaphson(x, iter)
    for i = 1:iter
        if fdev(x) <> 0 then
            x = g(x)
        end
    end
    disp (x)
endfunction

NewtonRaphson (-4, 15)
