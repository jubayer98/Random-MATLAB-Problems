clc;
clear all;
format long;

f = @(x)(x^3-x-2);

xk = 3;
xkMinus1 = 2;
xTol = 0.00003;

for iter=1:100
    xkPlus1 = xk - (f(xk)*(xkMinus1-xk))/(f(xkMinus1)-f(xk));
    
    if (abs(f(xkPlus1)) < xTol)
        break;
    end;
    
    xkMinus1 = xk;
    xk = xkPlus1;
end;

xkPlus1
iter

    