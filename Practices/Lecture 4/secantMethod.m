clc;
clear all;

f = @(x)(x^3-x-2);

xK = 3;
xKminus1 = 2;
xTol = 0.00003;

for iter=1:100
    xKplus1 = xK - (f(xK)*(xKminus1-xK))/(f(xKminus1)-f(xK));
    
    if (abs(f(xKplus1)) < xTol)
        break;
    end;
    
    xKminus1 = xK;
    xK = xKplus1;
end;

xKplus1
iter

    