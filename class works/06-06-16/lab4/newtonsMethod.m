clc;
clear all;

f = @(x)(exp(-x) - 1);
g = @(x)(-exp(-x));

x0 = 1;
xTol = 10^(-8);
iters = 1;

dx = -(f(x0)/g(x0));

root = x0+dx;

while(abs(dx) > xTol)
    dx = -(f(root)/g(root));
    root = root+dx;
    iters = iters+1;
end

root
iters
    