funcprot(0)

x = [1; 2; 3; 4; 5];
y = [2; 5; 10; 17; 26];

Y = y
X = x.*y
function [] = cuadradosmin(x, y)
    A = zeros(length(x), 2);
    A(:,1) = x;
    A(:,2) = 1;
    disp(A)
    M = (A' * A) * (A' * y');
    disp("A: " + string(M(1)));
    disp("B: " + string(M(2)));
endfunction

cuadradosmin(x, y)

function y = f1(x)
    a = -0.0564
    b = 0.3090
    y=(1)./(x.*a+b)
endfunction

function y = f2(x)
    c = -4.6862
    d = -9.3962
    y=d./(x + c)
endfunction

w = [0:0.1:5]
plot(x, y, "*")
//plot(w, f1(w), "r")
plot(w, f2(w), "g")
