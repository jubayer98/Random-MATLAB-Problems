%% CSE257 | Section 1 | Assignment 2

%Name: Jubayer Alam
%ID: 142 0268 042

%% Regula Falsi Method

clear all;
clc;
 
% Function to be evaluated.
f=@(x)(x^5+x+1);

xLower = -1;
xUpper = 0;
xTol = 10^-4;

% Set step size to allow xTol.
stepSize = (xUpper-xLower)/2.0;

iters = 0;

while(stepSize >= xTol)
    xNew = xUpper - (f(xUpper)*(xUpper-xLower)) / (f(xUpper)-f(xLower));
    
    if(f(xLower)*f(xNew) < 0) % f(xLower) and f(xNew) have opposite sign
        stepSize = xUpper - xNew;
        xUpper = xNew;
    else % f(xLower) and f(xNew) have same sign
        stepSize = xNew - xLower;
        xLower = xNew;
    end
    iters = iters + 1;
end

%output
fprintf('The approximate root after %d iterations is: %f \n', iters, xNew);
    
