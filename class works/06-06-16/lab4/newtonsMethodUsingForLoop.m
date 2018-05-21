clc;
clear all;

f = @(x)(exp(-x) - 1);
g = @(x)(-exp(-x));

x0 = 1;
xTol = 10^(-8);
% iters = 1;

dx = -(f(x0)/g(x0));

root = x0+dx;

for iter = 1:10
    
    if (abs(dx) < xTol)
        break;
    end;
    
   dx = -(f(root)/g(root));
   root = root+dx;
end;

%while(abs(dx) > xTol)
 %   dx = -(f(root)/g(root));
  %  root = root+dx;
   % iters = iters+1;
%end

root
iter
    