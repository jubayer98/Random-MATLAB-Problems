clear all;
clc;
 
% Function to be evaluated.
f=@(x)(x^5+x+1);

xLow = -1;
xUp = 0;
xTol = 10^-4;

% Set step size to allow xTol.
stepSize = (xUp-xLow)/2.0;

iters = 0;

while(stepSize >= xTol)
    xNew = xUp - (f(xUp)*(xUp-xLow)) / (f(xUp)-f(xLow));
    
    if(f(xLow)*f(xNew) < 0) % f(xLow) and f(xNew) have opposite sign
        stepSize = xUp - xNew;
        xUp = xNew;
    else % f(xLow) and f(xNew) have same sign
        stepSize = xNew - xLow;
        xLow = xNew;
    end
    iters = iters + 1;
end

%output
fprintf('The approximate root after %d iterations is: %f \n', iters, xNew);
    
