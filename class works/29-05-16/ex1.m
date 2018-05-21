clc;
clear all;

xLower = -1;
xUpper = 0;
xTol = 10^-4;

yLower = ex1Func(xLower);

xMid = (xLower+xUpper)/2;
yMid = ex1Func(xMid);

iters = 0;
while((xUpper-xLower)/2 > xTol)
    iters = iters+1;
    
    if(yLower*yMid < 0)
        xUpper = xMid;
    else
        xLower = xMid;
    end
    
    xMid = (xLower+xUpper)/2;
    yMid = ex1Func(xMid);
end

xMid
yMid
iters