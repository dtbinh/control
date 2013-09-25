format short e
A = [zeros(2, 3) eye(2,2); eye(3,3) zeros(3,2)];
A(2,3) = 2;
a3 = A(3,:);
B = [ A(2,3) A(2,5); A(4,3) A(4,5) ];


