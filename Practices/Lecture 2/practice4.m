sum = 0;

for x = 1:5
    sum = sum+x;
end
sum

avg_x = sum/x;
avg_x

A = 0;
B = 0;

for x = 1:5
    A = (x - avg_x)^2;
    B = B+A;
end
B

result = B/x;
result
