A = [3 5 3; 6 8 2; 2 7 3];
A

ans1 = A(6);
ans1

ans2 = A(3, 2);
ans2

ans3 = A([5 6]); %check 5 and 6 element
ans3

ans4 = A(1:4); %check 1 to 4 element
ans4

%(row, column)

ans5 = A(1:2, 3); %check first two element but column 3
ans5

ans6 = A(2, 1:2); %check first two element but row 2
ans6

ans7 = A(2:3, 2); %check last two element but column 2
ans7

ans8 = A(3, 2:3); %check last two element but row 3
ans8


