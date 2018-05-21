clear all;
clc;

f=@(x)(x^5+x+1);

xLow = -1;
xUp = 0;
xTol = 10^-4;

FV_xLow = f(xLow);

xMid = (xLow+xUp)/2;
FV_xMid = f(xMid);

iters = 0;
while((xUp-xLow)/2 > xTol)
    iters = iters+1;
    
    if(FV_xLow*FV_xMid < 0)
        xUp = xMid;
    else
        xLow = xMid;
    end
    
    xMid = (xLow+xUp)/2;
    FV_xMid = f(xMid);
end

xMid
FV_xMid
iters
