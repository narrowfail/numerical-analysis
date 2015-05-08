funcprot(0)

function y = f(x)
    y = (x^3) -3*x + 2
endfunction

function y = h(x)
    y = 3*x^2-3
endfunction

function [p,Q] = steffensen(a, cantIteraciones)
    R = zeros(cantIteraciones, 3);
    R(1,1) = a;
    for k = 1:cantIteraciones
        for j = 2:3
            nrdenom = h(R(k,j-1));
            if nrdenom == 0 then
                break;
            else
                R(k,j)=R(k,j-1)-f(R(k,j-1))/nrdenom;
            end
            
            aadenom = R(k,3)-2*R(k,2)+R(k,1);
               
            if aadenom == 0 then
                break;
            else 
                R(k+1,1)=R(k,1)-(R(k,2)-R(k,1))^2/aadenom;
            end
        end
        if (nrdenom==0) | (aadenom==0) then
            break;
        end
        p = R(k+1,1);
        Q = R(1:k+1,:);
    end
endfunction

[p, q] = steffensen(-4, 1)
disp(p)

[p, q] = steffensen(-4, 2)
disp(p)

[p, q] = steffensen(-4, 3)
disp(p)

[p, q] = steffensen(-4, 4)
disp(p)
