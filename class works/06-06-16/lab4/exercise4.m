clc;
clear all;
format long;

f = @(x)(3*x + sin(x) - exp(x));

xk = 1;
xkMinus1 = 0;
xTol = 0.0000001;

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

    