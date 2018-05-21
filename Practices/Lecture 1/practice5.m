A = [17 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
B = [2 3 4 5; 6 7 8 9; 10 11 12 13; 14 15 16 17];
C = [1 2 3; 4 5 6; 7 8 9];
y = [4 3 2 1];

result1 = A*B;
result1

result2 = B*A;
result2

%cant be performer because M1xN1 and M2xN2, here N1!=M2
% result3 = A*C;
% result3

transposeY = y';
transposeY