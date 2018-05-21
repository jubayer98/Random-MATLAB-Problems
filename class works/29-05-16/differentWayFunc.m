clear all;
clc;

f = @(x)(x^5+5*x+1);
for i=0:3
    x = f(i);
end
x